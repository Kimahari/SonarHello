using System;
using Xunit;
using console;

namespace console.testing
{
    public class UnitTest1
    {
        [Fact]
        public void Test1()
        {
            var test = new MyClass();

            Assert.False(test.CallMe());
        }
    }
}
