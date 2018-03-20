using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Talkingdata.Game.RNTalkingdataGame
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNTalkingdataGameModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNTalkingdataGameModule"/>.
        /// </summary>
        internal RNTalkingdataGameModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNTalkingdataGame";
            }
        }
    }
}
