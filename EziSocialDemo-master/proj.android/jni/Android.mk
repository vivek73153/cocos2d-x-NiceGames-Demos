LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := cocos2dcpp_shared

LOCAL_MODULE_FILENAME := libcocos2dcpp

LOCAL_SRC_FILES := hellocpp/main.cpp \
                   ../../Classes/AppDelegate.cpp \
                   ../../Classes/BaseScene.cpp \
                   ../../Classes/EventsAPIScene.cpp \
                   ../../Classes/FBActionScene.cpp \
                   ../../Classes/FeedAPIScene.cpp \
                   ../../Classes/FriendListScene.cpp \
                   ../../Classes/FriendsScene.cpp \
                   ../../Classes/HelpScene.cpp \
                   ../../Classes/HomeScene.cpp \
                   ../../Classes/OpenGraphAPIScene.cpp \
                   ../../Classes/RequestAPIScene.cpp \
                   ../../Classes/RequestListScene.cpp \
                   ../../Classes/ScoreAPIScene.cpp \
                   ../../Classes/ShareDialogScene.cpp \
                   ../../Classes/SplashScene.cpp \
                   ../../Classes/ProfileScene.cpp

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../Classes

LOCAL_WHOLE_STATIC_LIBRARIES += cocos2dx_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocosdenshion_static
LOCAL_WHOLE_STATIC_LIBRARIES += box2d_static
LOCAL_WHOLE_STATIC_LIBRARIES += chipmunk_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocos_extension_static
LOCAL_WHOLE_STATIC_LIBRARIES += ezibyte_social_static

include $(BUILD_SHARED_LIBRARY)

$(call import-module,cocos2dx)
$(call import-module,cocos2dx/platform/third_party/android/prebuilt/libcurl)
$(call import-module,CocosDenshion/android)
$(call import-module,extensions)
$(call import-module,external/Box2D)
$(call import-module,external/chipmunk)
$(call import-module,ezibyte/ezisocial/android)
