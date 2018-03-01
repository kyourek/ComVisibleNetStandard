using System.Runtime.InteropServices;

namespace ComVisibleNetStandard {
    [Guid("A6D6728D-F990-4330-B55C-296E13112601")]
    [ComVisible(true)]
    [InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
    public interface IComVisibleObject {
        [DispId(1)]
        string GiveItBack(string s);
    }

    [Guid("74AEB269-82E8-4B73-BBE6-57A28A0E7DFD")]
    [ComVisible(true)]
    [ClassInterface(ClassInterfaceType.None)]
    public class ComVisibleObject : IComVisibleObject {
        public string GiveItBack(string s) {
            return $"Here you go: {s}";
        }
    }
}
