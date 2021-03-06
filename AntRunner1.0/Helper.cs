﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Windows;
using System.Windows.Media;
using System.Windows.Threading;

namespace AntRunner
{
    public static class Helper
    {
        public static string GetEnumDescription(Enum e)
        {
            FieldInfo field = e.GetType().GetField(e.ToString());
            object[] objs = field.GetCustomAttributes(typeof(DescriptionAttribute), false);
            if (objs == null || objs.Length == 0)
                return e.ToString();
            return ((DescriptionAttribute)objs[0]).Description;
        }
        public static List<string> GetEnumDescriptions(Type t)
        {
            List<string> list = new List<string>();
            Array arr = Enum.GetValues(t);

            foreach (object obj in arr)
            {
                list.Add(GetEnumDescription((Enum)obj));
            }
            return list;
        }
        public static TEnum String2Enum<TEnum>(string str)
        {
            try
            {
                return (TEnum)Enum.Parse(typeof(TEnum), str);
            }
            catch (Exception ex)
            {
                AppLog.Error("GetEnumDescription has error.", ex);
                return default(TEnum);
            }
        }
        public static object DescToEnum(string desc, Type t)
        {
            Array arr = Enum.GetValues(t);
            foreach (object obj in arr)
            {
                if (GetEnumDescription((Enum)obj) == desc)
                    return obj;
            }
            return arr.GetValue(0);
        }
        /// <summary>
        /// 刷新UI
        /// </summary>
        public static void RefreshUI()
        {
            DispatcherFrame frame = new DispatcherFrame();
            Dispatcher.CurrentDispatcher.BeginInvoke(DispatcherPriority.Background,
                new DispatcherOperationCallback(delegate(object f)
                {
                    ((DispatcherFrame)f).Continue = false;

                    return null;
                }
                    ), frame);
            Dispatcher.PushFrame(frame);
        }
        /// <summary>
        /// 获取子控件
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="parent"></param>
        /// <param name="zIndex"></param>
        /// <returns></returns>
        public static T GetVisualChild<T>(DependencyObject parent, int zIndex = 0) where T : Visual
        {
            T child = default(T);
            int numVisuals = VisualTreeHelper.GetChildrenCount(parent);
            for (int i = 0; i < numVisuals; i++)
            {
                Visual v = (Visual)VisualTreeHelper.GetChild(parent, i);
                child = v as T;
                if (child == null)
                    child = GetVisualChild<T>(v);
                if (child != null)
                {
                    if (zIndex == 0)
                        break;
                    else
                        child = GetVisualChild<T>(v, zIndex--);
                }
            }
            return child;
        }
        /// <summary>
        /// 获取父控件
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="child"></param>
        /// <param name="zIndex"></param>
        /// <returns></returns>
        public static T GetVisualParent<T>(DependencyObject child, int zIndex = 0) where T : Visual
        {
            T parent = null;
            Visual v = (Visual)VisualTreeHelper.GetParent(child);
            if (v != null)
            {
                if (v is T)
                {
                    if (zIndex == 0)
                        parent = v as T;
                    else
                        parent = GetVisualParent<T>(v, zIndex--);
                }
                else
                    parent = GetVisualParent<T>(v);
            }
            return parent;
        }

        public static string Decode(string code)
        {
            byte[] bytes = new byte[code.Length / 2 + 1];
            for (int i = 0; i < code.Length; ++i)
            {
                if (i % 2 == 0)
                {
                    bytes[i / 2] = byte.Parse(code.Substring(i, 2), System.Globalization.NumberStyles.HexNumber);
                }
            }
            return Encoding.UTF8.GetString(bytes).TrimEnd('\0');
        }
    }
}
