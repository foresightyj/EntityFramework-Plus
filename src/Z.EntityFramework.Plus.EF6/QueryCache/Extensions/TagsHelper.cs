using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Z.EntityFramework.Plus.QueryCache.Extensions
{
    internal class TagsHelper
    {
        public static string[] JoinFirstTagAndRestTags(string firstTag, params string[] restTags)
        {
            return (new[] { firstTag }).Concat(restTags).ToArray();
        }
    }
}
