-- pbober Xmonad config
-- based on default configuration for Fedora

import System.Posix.Env (getEnv)
import Data.Maybe (maybe)

import XMonad
import XMonad.Config.Desktop
import XMonad.Config.Gnome
import XMonad.Config.Kde
import XMonad.Config.Xfce
import XMonad.Hooks.SetWMName

main = do
     session <- getEnv "DESKTOP_SESSION"
     let baseSession = maybe desktopConfig desktop session
     xmonad $ baseSession { modMask = mod4Mask              -- use 'Win' key
                          , startupHook = setWMName "LG3D"  -- workaround for Java AWT
                          }

desktop "gnome" = gnomeConfig
desktop "kde" = kde4Config
desktop "xfce" = xfceConfig
desktop "xmonad-gnome" = gnomeConfig
desktop _ = desktopConfig

