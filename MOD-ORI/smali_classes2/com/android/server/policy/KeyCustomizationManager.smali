.class public final Lcom/android/server/policy/KeyCustomizationManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public defaultLongPressTimeout:J

.field public final mContext:Landroid/content/Context;

.field public mIsCalledOpenDictationXCoverTop:Z

.field public mIsKeyLongConsumed:Z

.field public mIsKeyLongPressed:Z

.field public mIsTopKeyOnLockScreen:Z

.field public mIsXCoverKeyOnLockScreen:Z

.field public final mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

.field public mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongPressed:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongConsumed:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsXCoverKeyOnLockScreen:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsTopKeyOnLockScreen:Z

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsCalledOpenDictationXCoverTop:Z

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 21
    .line 22
    new-instance p2, Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 23
    .line 24
    invoke-direct {p2, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    iput-object p2, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 28
    .line 29
    return-void
.end method

.method public static actionToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_3

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_2

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p0, v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    if-eq p0, v0, :cond_0

    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    const-string p0, "ACTION_BLOCK_KEY_EVENT"

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    const-string p0, "ACTION_START_SERVICE"

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_2
    const-string p0, "ACTION_SEND_BROADCAST"

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_3
    const-string p0, "ACTION_START_ACTIVITY"

    .line 28
    .line 29
    return-object p0
.end method

.method public static getEventId(II)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0x3f7

    .line 2
    .line 3
    if-eq p1, v0, :cond_2

    .line 4
    .line 5
    const/16 v0, 0x437

    .line 6
    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    and-int/lit8 p1, p0, 0x3

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    const-string p0, "HWB1107"

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    and-int/lit8 p0, p0, 0x4

    .line 18
    .line 19
    if-eqz p0, :cond_4

    .line 20
    .line 21
    const-string p0, "HWB1112"

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_2
    and-int/lit8 p1, p0, 0x3

    .line 25
    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    const-string p0, "HWB1101"

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_3
    and-int/lit8 p0, p0, 0x4

    .line 32
    .line 33
    if-eqz p0, :cond_4

    .line 34
    .line 35
    const-string p0, "HWB1106"

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_4
    :goto_0
    const/4 p0, 0x0

    .line 39
    return-object p0
.end method

.method public static idToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    if-eq p0, v0, :cond_9

    .line 4
    .line 5
    const/16 v0, 0x1e

    .line 6
    .line 7
    if-eq p0, v0, :cond_8

    .line 8
    .line 9
    const/16 v0, 0x32

    .line 10
    .line 11
    if-eq p0, v0, :cond_7

    .line 12
    .line 13
    const/16 v0, 0x3b7

    .line 14
    .line 15
    if-eq p0, v0, :cond_6

    .line 16
    .line 17
    const/16 v0, 0x3e8

    .line 18
    .line 19
    if-eq p0, v0, :cond_5

    .line 20
    .line 21
    const/16 v0, 0x44c

    .line 22
    .line 23
    if-eq p0, v0, :cond_4

    .line 24
    .line 25
    const/16 v0, 0x44f

    .line 26
    .line 27
    if-eq p0, v0, :cond_3

    .line 28
    .line 29
    const/16 v0, 0x450

    .line 30
    .line 31
    if-eq p0, v0, :cond_2

    .line 32
    .line 33
    const/16 v0, 0x452

    .line 34
    .line 35
    if-eq p0, v0, :cond_1

    .line 36
    .line 37
    const/16 v0, 0x453

    .line 38
    .line 39
    if-eq p0, v0, :cond_0

    .line 40
    .line 41
    packed-switch p0, :pswitch_data_0

    .line 42
    .line 43
    .line 44
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :pswitch_0
    const-string p0, "ID_GENERAL_APPLICATION"

    .line 50
    .line 51
    return-object p0

    .line 52
    :pswitch_1
    const-string p0, "ID_APPLICATION_UI_TV_MODE"

    .line 53
    .line 54
    return-object p0

    .line 55
    :pswitch_2
    const-string p0, "ID_APPLICATION_UI_CAMERA"

    .line 56
    .line 57
    return-object p0

    .line 58
    :cond_0
    const-string p0, "ID_SETTING_UI_MOUSE_BUTTON"

    .line 59
    .line 60
    return-object p0

    .line 61
    :cond_1
    const-string p0, "ID_SETTING_UI_ONE_HAND_MODE"

    .line 62
    .line 63
    return-object p0

    .line 64
    :cond_2
    const-string p0, "ID_SETTING_UI_SIDE_KEY"

    .line 65
    .line 66
    return-object p0

    .line 67
    :cond_3
    const-string p0, "ID_SETTING_UI_XCOVER_TOP"

    .line 68
    .line 69
    return-object p0

    .line 70
    :cond_4
    const-string p0, "ID_SETTING_UI"

    .line 71
    .line 72
    return-object p0

    .line 73
    :cond_5
    const-string p0, "ID_DEFAULT"

    .line 74
    .line 75
    return-object p0

    .line 76
    :cond_6
    const-string p0, "ID_SETTING_UI_B2B_DELTA"

    .line 77
    .line 78
    return-object p0

    .line 79
    :cond_7
    const-string p0, "ID_KNOX_LEGACY"

    .line 80
    .line 81
    return-object p0

    .line 82
    :cond_8
    const-string p0, "ID_KNOX_V2"

    .line 83
    .line 84
    return-object p0

    .line 85
    :cond_9
    const-string p0, "ID_KNOX_MDM"

    .line 86
    .line 87
    return-object p0

    .line 88
    nop

    .line 89
    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isKgIntent(Landroid/content/Intent;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "com.samsung.android.kgclient"

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v3, 0x1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    return v3

    .line 19
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    return v3

    .line 36
    :cond_2
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    if-eqz p0, :cond_3

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-eqz p0, :cond_3

    .line 51
    .line 52
    return v3

    .line 53
    :cond_3
    return v0
.end method

.method public static isKnoxId(I)Z
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x1e

    .line 6
    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x32

    .line 10
    .line 11
    if-ne p0, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    :goto_1
    return p0
.end method

.method public static isReportedKey(ZLandroid/os/Bundle;)Z
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    if-eqz p0, :cond_1

    .line 6
    .line 7
    const-string/jumbo p0, "reportStateOnKeyedDown"

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    const-string/jumbo p0, "reportStateOnKeyedUp"

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public static isXCoverOrTopKey(I)Z
    .locals 1

    .line 1
    const/16 v0, 0x3f7

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x437

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    :goto_1
    return p0
.end method

.method public static pressToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    and-int/lit8 v0, p0, 0x3

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string p0, "KEY_PRESS_SINGLE"

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    and-int/lit8 v0, p0, 0x4

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const-string p0, "KEY_PRESS_LONG"

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    and-int/lit8 v0, p0, 0x8

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    const-string p0, "KEY_PRESS_DOUBLE"

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_2
    and-int/lit8 v0, p0, 0x10

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    const-string p0, "KEY_PRESS_TRIPLE"

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_3
    and-int/lit8 v0, p0, 0x20

    .line 30
    .line 31
    if-eqz v0, :cond_4

    .line 32
    .line 33
    const-string p0, "KEY_PRESS_QUADRUPLE"

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_4
    and-int/lit8 v0, p0, 0x40

    .line 37
    .line 38
    if-eqz v0, :cond_5

    .line 39
    .line 40
    const-string p0, "KEY_PRESS_QUINTUPLE"

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_5
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method


# virtual methods
.method public final canDispatchXCoverTopKeyEvent(I)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    sget-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_XCOVER_TOP:[I

    .line 16
    .line 17
    array-length v2, v0

    .line 18
    const/4 v3, 0x0

    .line 19
    move v4, v3

    .line 20
    :goto_0
    const-string v5, "KeyCustomizationManager"

    .line 21
    .line 22
    if-ge v4, v2, :cond_3

    .line 23
    .line 24
    aget v6, v0, v4

    .line 25
    .line 26
    invoke-virtual {p0, v6, p1}, Lcom/android/server/policy/KeyCustomizationManager;->getLastId(II)I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    const/4 v7, -0x1

    .line 31
    if-ne v6, v7, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/16 v7, 0x3e8

    .line 35
    .line 36
    if-ge v6, v7, :cond_2

    .line 37
    .line 38
    const-string p0, "Allow XCover or Top key event dispatching even though screen is turned off by knox policy."

    .line 39
    .line 40
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    return v1

    .line 44
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    sget-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_XCOVER_TOP:[I

    .line 48
    .line 49
    array-length v2, v0

    .line 50
    move v4, v3

    .line 51
    :goto_2
    if-ge v4, v2, :cond_5

    .line 52
    .line 53
    aget v6, v0, v4

    .line 54
    .line 55
    invoke-virtual {p0, v6, p1}, Lcom/android/server/policy/KeyCustomizationManager;->hasXCoverTopId(II)Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-eqz v6, :cond_4

    .line 60
    .line 61
    const-string p0, "After screen is turned off, disallow XCover or Top key event dispatching, because single or long press has a ID_SETTING_UI_XCOVER_TOP."

    .line 62
    .line 63
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    return v3

    .line 67
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_5
    return v1
.end method

.method public final dispatchKeyCustomizationKeyEvent(Landroid/view/KeyEvent;Z)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isLongPress()Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    const/4 v7, 0x1

    .line 22
    if-nez v5, :cond_0

    .line 23
    .line 24
    move v5, v7

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v5, 0x0

    .line 27
    :goto_0
    const/4 v8, 0x3

    .line 28
    invoke-virtual {v0, v8, v2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    .line 29
    .line 30
    .line 31
    move-result v9

    .line 32
    const/4 v10, 0x4

    .line 33
    invoke-virtual {v0, v10, v2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    .line 34
    .line 35
    .line 36
    move-result v11

    .line 37
    const/4 v12, -0x1

    .line 38
    if-eqz p2, :cond_2

    .line 39
    .line 40
    if-eq v11, v12, :cond_1

    .line 41
    .line 42
    move v13, v7

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/4 v13, 0x0

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move/from16 v13, p2

    .line 47
    .line 48
    :goto_1
    sget-object v14, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 49
    .line 50
    sget-boolean v14, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    .line 51
    .line 52
    const-string v15, "KeyCustomizationManager"

    .line 53
    .line 54
    if-eqz v14, :cond_3

    .line 55
    .line 56
    new-instance v6, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v8, "dispatchKeyEvent: keyCode="

    .line 59
    .line 60
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v8, " down="

    .line 67
    .line 68
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v8, " repeatCount="

    .line 75
    .line 76
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v8, " isLongPress="

    .line 83
    .line 84
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v8, " pressAction="

    .line 91
    .line 92
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-static {v9}, Lcom/android/server/policy/KeyCustomizationManager;->actionToString(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v8

    .line 99
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v8, " longPressAction="

    .line 103
    .line 104
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-static {v11}, Lcom/android/server/policy/KeyCustomizationManager;->actionToString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v8, " forceDispatching="

    .line 115
    .line 116
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-static {v15, v6, v13}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 120
    .line 121
    .line 122
    :cond_3
    if-eq v11, v12, :cond_5

    .line 123
    .line 124
    if-ne v11, v10, :cond_4

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_4
    move v6, v11

    .line 128
    goto :goto_3

    .line 129
    :cond_5
    :goto_2
    move v6, v9

    .line 130
    :goto_3
    const/4 v8, 0x2

    .line 131
    if-eqz v6, :cond_7

    .line 132
    .line 133
    if-eq v6, v7, :cond_7

    .line 134
    .line 135
    if-eq v6, v8, :cond_7

    .line 136
    .line 137
    const/4 v10, 0x3

    .line 138
    if-eq v6, v10, :cond_7

    .line 139
    .line 140
    if-eqz v14, :cond_6

    .line 141
    .line 142
    const-string v0, "dispatchKeyEvent - default, there is no action, NEEDED_NEXT_STEP"

    .line 143
    .line 144
    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    :cond_6
    return v8

    .line 148
    :cond_7
    const/4 v6, 0x0

    .line 149
    if-eqz v5, :cond_1a

    .line 150
    .line 151
    if-nez v3, :cond_c

    .line 152
    .line 153
    const/4 v3, 0x0

    .line 154
    iput-boolean v3, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongPressed:Z

    .line 155
    .line 156
    iput-boolean v3, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongConsumed:Z

    .line 157
    .line 158
    sget-boolean v3, Lcom/samsung/android/rune/InputRune;->PWM_B2B_DEDICATED_APP:Z

    .line 159
    .line 160
    if-eqz v3, :cond_9

    .line 161
    .line 162
    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/KeyCustomizationManager;->startMCPTTServiceIfNeeded(Landroid/view/KeyEvent;I)Z

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    if-eqz v3, :cond_9

    .line 167
    .line 168
    if-eqz v14, :cond_8

    .line 169
    .line 170
    const-string v0, "dispatchKeyEvent:down - launch MCPTT, NO_NEED_NEXT_STEP"

    .line 171
    .line 172
    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    :cond_8
    return v7

    .line 176
    :cond_9
    sget-boolean v3, Lcom/samsung/android/rune/InputRune;->PWM_XCOVER_AND_TOP_KEY:Z

    .line 177
    .line 178
    if-eqz v3, :cond_a

    .line 179
    .line 180
    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/KeyCustomizationManager;->prepareVoiceToTextMessage(Landroid/view/KeyEvent;I)V

    .line 181
    .line 182
    .line 183
    :cond_a
    if-ne v9, v8, :cond_c

    .line 184
    .line 185
    const/4 v3, 0x0

    .line 186
    const/4 v10, 0x3

    .line 187
    invoke-virtual {v0, v6, v1, v10, v3}, Lcom/android/server/policy/KeyCustomizationManager;->sendBroadcast(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Landroid/view/KeyEvent;IZ)I

    .line 188
    .line 189
    .line 190
    move-result v6

    .line 191
    if-ne v6, v12, :cond_c

    .line 192
    .line 193
    if-eqz v14, :cond_b

    .line 194
    .line 195
    const-string v0, "dispatchKeyEvent:down - sendBroadcast, NO_NEED_NEXT_STEP"

    .line 196
    .line 197
    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    :cond_b
    return v7

    .line 201
    :cond_c
    if-eqz v4, :cond_15

    .line 202
    .line 203
    iput-boolean v7, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongPressed:Z

    .line 204
    .line 205
    sget-boolean v3, Lcom/samsung/android/rune/InputRune;->PWM_ACTIVE_OR_XCOVER_KEY:Z

    .line 206
    .line 207
    if-eqz v3, :cond_11

    .line 208
    .line 209
    invoke-static {v2}, Lcom/android/server/policy/KeyCustomizationManager;->isXCoverOrTopKey(I)Z

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    if-nez v3, :cond_d

    .line 214
    .line 215
    const/4 v3, 0x0

    .line 216
    goto :goto_4

    .line 217
    :cond_d
    const/4 v3, 0x4

    .line 218
    invoke-virtual {v0, v3, v2}, Lcom/android/server/policy/KeyCustomizationManager;->hasXCoverTopId(II)Z

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    :goto_4
    if-eqz v3, :cond_11

    .line 223
    .line 224
    const/4 v3, 0x0

    .line 225
    invoke-virtual {v0, v1, v3}, Lcom/android/server/policy/KeyCustomizationManager;->launchXCoverLongActionIfNeeded(Landroid/view/KeyEvent;Z)Z

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    if-eqz v1, :cond_f

    .line 230
    .line 231
    if-eqz v14, :cond_e

    .line 232
    .line 233
    const-string v1, "dispatchKeyEvent:longPress - XCoverTopKey Action, NO_NEED_NEXT_STEP"

    .line 234
    .line 235
    invoke-static {v15, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    :cond_e
    iput-boolean v7, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongConsumed:Z

    .line 239
    .line 240
    return v7

    .line 241
    :cond_f
    if-eqz v14, :cond_10

    .line 242
    .line 243
    const-string v0, "dispatchKeyEvent:longPress - XCoverTopKey Action, NEEDED_NEXT_STEP"

    .line 244
    .line 245
    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .line 247
    .line 248
    :cond_10
    return v8

    .line 249
    :cond_11
    invoke-virtual {v0, v11, v1, v2}, Lcom/android/server/policy/KeyCustomizationManager;->launchLongPressAction(ILandroid/view/KeyEvent;I)Z

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    if-eqz v1, :cond_13

    .line 254
    .line 255
    if-eqz v14, :cond_12

    .line 256
    .line 257
    const-string v1, "dispatchKeyEvent:longPress - launch Action, NO_NEED_NEXT_STEP"

    .line 258
    .line 259
    invoke-static {v15, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    .line 261
    .line 262
    :cond_12
    iput-boolean v7, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongConsumed:Z

    .line 263
    .line 264
    return v7

    .line 265
    :cond_13
    if-eqz v14, :cond_14

    .line 266
    .line 267
    const-string v0, "dispatchKeyEvent:longPress, NEEDED_ONLY_LONG_PRESS_STEP"

    .line 268
    .line 269
    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .line 271
    .line 272
    :cond_14
    const/4 v0, 0x3

    .line 273
    return v0

    .line 274
    :cond_15
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_ACTIVE_OR_XCOVER_KEY:Z

    .line 275
    .line 276
    if-eqz v1, :cond_2c

    .line 277
    .line 278
    invoke-static {v2}, Lcom/android/server/policy/KeyCustomizationManager;->isXCoverOrTopKey(I)Z

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    if-nez v1, :cond_17

    .line 283
    .line 284
    :cond_16
    const/4 v6, 0x0

    .line 285
    goto :goto_6

    .line 286
    :cond_17
    sget-object v1, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_XCOVER_TOP:[I

    .line 287
    .line 288
    array-length v3, v1

    .line 289
    const/4 v4, 0x0

    .line 290
    :goto_5
    if-ge v4, v3, :cond_16

    .line 291
    .line 292
    aget v6, v1, v4

    .line 293
    .line 294
    invoke-virtual {v0, v6, v2}, Lcom/android/server/policy/KeyCustomizationManager;->hasXCoverTopId(II)Z

    .line 295
    .line 296
    .line 297
    move-result v6

    .line 298
    if-eqz v6, :cond_18

    .line 299
    .line 300
    move v6, v7

    .line 301
    goto :goto_6

    .line 302
    :cond_18
    add-int/2addr v4, v7

    .line 303
    goto :goto_5

    .line 304
    :goto_6
    if-eqz v6, :cond_2c

    .line 305
    .line 306
    if-eqz v14, :cond_19

    .line 307
    .line 308
    const-string v0, "dispatchKeyEvent:down - XCoverTopKey Action, NEEDED_NEXT_STEP"

    .line 309
    .line 310
    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .line 312
    .line 313
    :cond_19
    return v8

    .line 314
    :cond_1a
    sget-boolean v3, Lcom/samsung/android/rune/InputRune;->PWM_XCOVER_AND_TOP_KEY:Z

    .line 315
    .line 316
    if-eqz v3, :cond_1b

    .line 317
    .line 318
    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/KeyCustomizationManager;->prepareVoiceToTextMessage(Landroid/view/KeyEvent;I)V

    .line 319
    .line 320
    .line 321
    :cond_1b
    if-ne v9, v8, :cond_1d

    .line 322
    .line 323
    iget-boolean v3, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongPressed:Z

    .line 324
    .line 325
    const/4 v4, 0x3

    .line 326
    invoke-virtual {v0, v6, v1, v4, v3}, Lcom/android/server/policy/KeyCustomizationManager;->sendBroadcast(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Landroid/view/KeyEvent;IZ)I

    .line 327
    .line 328
    .line 329
    move-result v3

    .line 330
    if-ne v3, v12, :cond_1d

    .line 331
    .line 332
    if-eqz v14, :cond_1c

    .line 333
    .line 334
    const-string v0, "dispatchKeyEvent:up - sendBroadcast, NO_NEED_NEXT_STEP"

    .line 335
    .line 336
    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    .line 338
    .line 339
    :cond_1c
    return v7

    .line 340
    :cond_1d
    sget-boolean v3, Lcom/samsung/android/rune/InputRune;->PWM_ACTIVE_OR_XCOVER_KEY:Z

    .line 341
    .line 342
    if-eqz v3, :cond_27

    .line 343
    .line 344
    iget-boolean v3, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongPressed:Z

    .line 345
    .line 346
    if-nez v3, :cond_22

    .line 347
    .line 348
    invoke-static {v2}, Lcom/android/server/policy/KeyCustomizationManager;->isXCoverOrTopKey(I)Z

    .line 349
    .line 350
    .line 351
    move-result v3

    .line 352
    if-nez v3, :cond_1e

    .line 353
    .line 354
    const/4 v3, 0x0

    .line 355
    goto :goto_7

    .line 356
    :cond_1e
    const/4 v3, 0x3

    .line 357
    invoke-virtual {v0, v3, v2}, Lcom/android/server/policy/KeyCustomizationManager;->hasXCoverTopId(II)Z

    .line 358
    .line 359
    .line 360
    move-result v4

    .line 361
    move v3, v4

    .line 362
    :goto_7
    if-eqz v3, :cond_27

    .line 363
    .line 364
    const/4 v3, 0x0

    .line 365
    invoke-virtual {v0, v1, v3}, Lcom/android/server/policy/KeyCustomizationManager;->launchXCoverPressActionIfNeeded(Landroid/view/KeyEvent;Z)Z

    .line 366
    .line 367
    .line 368
    move-result v0

    .line 369
    if-eqz v0, :cond_20

    .line 370
    .line 371
    if-eqz v14, :cond_1f

    .line 372
    .line 373
    const-string v0, "dispatchKeyEvent:up - XCoverTopKey Action, NO_NEED_NEXT_STEP"

    .line 374
    .line 375
    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    .line 377
    .line 378
    :cond_1f
    return v7

    .line 379
    :cond_20
    if-eqz v14, :cond_21

    .line 380
    .line 381
    const-string v0, "dispatchKeyEvent:up - XCoverTopKey Action, NEEDED_NEXT_STEP"

    .line 382
    .line 383
    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    .line 385
    .line 386
    :cond_21
    return v8

    .line 387
    :cond_22
    const/4 v3, 0x0

    .line 388
    iget-boolean v4, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongConsumed:Z

    .line 389
    .line 390
    if-nez v4, :cond_27

    .line 391
    .line 392
    invoke-static {v2}, Lcom/android/server/policy/KeyCustomizationManager;->isXCoverOrTopKey(I)Z

    .line 393
    .line 394
    .line 395
    move-result v4

    .line 396
    if-nez v4, :cond_24

    .line 397
    .line 398
    :cond_23
    move v6, v3

    .line 399
    goto :goto_9

    .line 400
    :cond_24
    sget-object v4, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_XCOVER_TOP:[I

    .line 401
    .line 402
    array-length v6, v4

    .line 403
    move v10, v3

    .line 404
    :goto_8
    if-ge v10, v6, :cond_23

    .line 405
    .line 406
    aget v11, v4, v10

    .line 407
    .line 408
    invoke-virtual {v0, v11, v2}, Lcom/android/server/policy/KeyCustomizationManager;->hasXCoverTopId(II)Z

    .line 409
    .line 410
    .line 411
    move-result v11

    .line 412
    if-eqz v11, :cond_25

    .line 413
    .line 414
    move v6, v7

    .line 415
    goto :goto_9

    .line 416
    :cond_25
    add-int/2addr v10, v7

    .line 417
    goto :goto_8

    .line 418
    :goto_9
    if-eqz v6, :cond_27

    .line 419
    .line 420
    if-eqz v14, :cond_26

    .line 421
    .line 422
    const-string v0, "dispatchKeyEvent:up - XCoverTopKey Action, No longPress consumed, NEEDED_NEXT_STEP"

    .line 423
    .line 424
    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    .line 426
    .line 427
    :cond_26
    return v8

    .line 428
    :cond_27
    iget-boolean v3, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongPressed:Z

    .line 429
    .line 430
    if-nez v3, :cond_28

    .line 431
    .line 432
    invoke-virtual {v0, v9, v1, v2, v13}, Lcom/android/server/policy/KeyCustomizationManager;->launchPressAction(ILandroid/view/KeyEvent;IZ)Z

    .line 433
    .line 434
    .line 435
    goto :goto_a

    .line 436
    :cond_28
    sget-boolean v3, Lcom/samsung/android/rune/InputRune;->PWM_B2B_DEDICATED_APP:Z

    .line 437
    .line 438
    if-eqz v3, :cond_2a

    .line 439
    .line 440
    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/KeyCustomizationManager;->startMCPTTServiceIfNeeded(Landroid/view/KeyEvent;I)Z

    .line 441
    .line 442
    .line 443
    move-result v1

    .line 444
    if-eqz v1, :cond_2a

    .line 445
    .line 446
    if-eqz v14, :cond_29

    .line 447
    .line 448
    const-string v0, "dispatchKeyEvent:up - launch MCPTT, NO_NEED_NEXT_STEP"

    .line 449
    .line 450
    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    .line 452
    .line 453
    :cond_29
    return v7

    .line 454
    :cond_2a
    iget-boolean v0, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongConsumed:Z

    .line 455
    .line 456
    if-eqz v0, :cond_2c

    .line 457
    .line 458
    if-eqz v14, :cond_2b

    .line 459
    .line 460
    const-string v0, "dispatchKeyEvent:up - longPress, NO_NEED_NEXT_STEP"

    .line 461
    .line 462
    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    .line 464
    .line 465
    :cond_2b
    return v7

    .line 466
    :cond_2c
    :goto_a
    if-eq v9, v7, :cond_2f

    .line 467
    .line 468
    const/4 v0, 0x3

    .line 469
    if-eq v9, v0, :cond_2f

    .line 470
    .line 471
    if-eqz v13, :cond_2d

    .line 472
    .line 473
    goto :goto_b

    .line 474
    :cond_2d
    if-eqz v14, :cond_2e

    .line 475
    .line 476
    const-string v0, "dispatchKeyEvent - default, NEEDED_NEXT_STEP"

    .line 477
    .line 478
    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    .line 480
    .line 481
    :cond_2e
    return v8

    .line 482
    :cond_2f
    :goto_b
    if-eqz v14, :cond_31

    .line 483
    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    .line 485
    .line 486
    const-string v1, "dispatchKeyEvent:"

    .line 487
    .line 488
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    if-eqz v5, :cond_30

    .line 492
    .line 493
    const-string v1, "down"

    .line 494
    .line 495
    goto :goto_c

    .line 496
    :cond_30
    const-string/jumbo v1, "up"

    .line 497
    .line 498
    .line 499
    :goto_c
    const-string v2, " - forceDispatching or press action, NO_NEED_NEXT_STEP"

    .line 500
    .line 501
    invoke-static {v0, v1, v2, v15}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    :cond_31
    return v7
.end method

.method public final getLastAction(II)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, -0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget p0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    .line 12
    .line 13
    :goto_0
    return p0
.end method

.method public final getLastId(II)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, -0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget p0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    .line 12
    .line 13
    :goto_0
    return p0
.end method

.method public final hasHigherIdWithAllPress(II)Z
    .locals 8

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastId(II)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-ge v0, v1, :cond_5

    .line 9
    .line 10
    const/4 v1, -0x1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    sget-object v1, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_ALL:[I

    .line 15
    .line 16
    array-length v3, v1

    .line 17
    const/16 v4, 0x7d3

    .line 18
    .line 19
    move v5, v2

    .line 20
    :goto_0
    if-ge v5, v3, :cond_4

    .line 21
    .line 22
    aget v6, v1, v5

    .line 23
    .line 24
    if-ne v6, p1, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    iget-object v7, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 28
    .line 29
    invoke-virtual {v7, v6, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    if-nez v6, :cond_2

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    iget v6, v6, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    .line 37
    .line 38
    if-le v4, v6, :cond_3

    .line 39
    .line 40
    move v4, v6

    .line 41
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_4
    if-ge v4, v0, :cond_5

    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    :cond_5
    :goto_2
    return v2
.end method

.method public final hasHigherIdWithOppositePress(II)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastId(II)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    const/4 v0, -0x1

    .line 20
    if-ne p0, v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/16 v0, 0x3e8

    .line 24
    .line 25
    if-ge p0, v0, :cond_2

    .line 26
    .line 27
    const-string v0, "hasHigherIdInOppositePress, press="

    .line 28
    .line 29
    const-string v1, " keyCode="

    .line 30
    .line 31
    const-string v2, " id="

    .line 32
    .line 33
    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string p2, "KeyCustomizationManager"

    .line 38
    .line 39
    invoke-static {p1, p0, p2}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x1

    .line 43
    return p0

    .line 44
    :cond_2
    :goto_0
    return v1
.end method

.method public final hasLastInfo(II)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public final hasXCoverTopId(II)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastId(II)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/16 p1, 0x44f

    .line 6
    .line 7
    if-ne p0, p1, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public final initPowerBehaviorAndSingleKeyGestureDetectorRule(I)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-eq p1, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateSingleKeyGestureRule(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    sget-object v2, Lcom/android/server/policy/KeyCustomizationConstants;->NEEDED_UPDATE_BEHAVIOR_MULTI_PRESS_TYPE:[I

    .line 11
    .line 12
    array-length v3, v2

    .line 13
    const-wide/16 v4, 0x0

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    move-wide v7, v4

    .line 17
    :goto_0
    if-ge v6, v3, :cond_5

    .line 18
    .line 19
    aget v9, v2, v6

    .line 20
    .line 21
    if-ne p1, v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, v9}, Lcom/android/server/policy/KeyCustomizationManager;->updatePowerBehavior(I)V

    .line 24
    .line 25
    .line 26
    :cond_1
    and-int/lit8 v10, v9, 0x4

    .line 27
    .line 28
    if-eqz v10, :cond_2

    .line 29
    .line 30
    const/4 v10, 0x1

    .line 31
    invoke-virtual {p0, v9, p1, v10}, Lcom/android/server/policy/KeyCustomizationManager;->updateLongPressTimeoutIfNeeded(IIZ)V

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_2
    iget-object v10, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 36
    .line 37
    invoke-virtual {v10, v9, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 38
    .line 39
    .line 40
    move-result-object v9

    .line 41
    if-nez v9, :cond_3

    .line 42
    .line 43
    move-wide v9, v4

    .line 44
    goto :goto_1

    .line 45
    :cond_3
    iget-wide v9, v9, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->multiPressTimeout:J

    .line 46
    .line 47
    :goto_1
    cmp-long v11, v7, v9

    .line 48
    .line 49
    if-gez v11, :cond_4

    .line 50
    .line 51
    move-wide v7, v9

    .line 52
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_5
    cmp-long p0, v7, v4

    .line 56
    .line 57
    if-eqz p0, :cond_a

    .line 58
    .line 59
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mCustomRules:Landroid/util/SparseArray;

    .line 64
    .line 65
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    check-cast p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 70
    .line 71
    if-nez p0, :cond_6

    .line 72
    .line 73
    goto :goto_5

    .line 74
    :cond_6
    iget-wide v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->extensionMultiPressTimeout:J

    .line 75
    .line 76
    cmp-long p1, v0, v4

    .line 77
    .line 78
    if-eqz p1, :cond_7

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_7
    sget-wide v0, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultMultiPressTimeout:J

    .line 82
    .line 83
    :goto_3
    cmp-long p1, v7, v0

    .line 84
    .line 85
    if-nez p1, :cond_8

    .line 86
    .line 87
    goto :goto_5

    .line 88
    :cond_8
    sget-wide v0, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultMultiPressTimeout:J

    .line 89
    .line 90
    cmp-long p1, v7, v0

    .line 91
    .line 92
    if-nez p1, :cond_9

    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_9
    move-wide v4, v7

    .line 96
    :goto_4
    iput-wide v4, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->extensionMultiPressTimeout:J

    .line 97
    .line 98
    :cond_a
    :goto_5
    return-void
.end method

.method public final launchLongPressAction(ILandroid/view/KeyEvent;I)Z
    .locals 6

    const/4 v0, 0x4

    .line 4
    invoke-virtual {p0, v0, p3}, Lcom/android/server/policy/KeyCustomizationManager;->hasHigherIdWithAllPress(II)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 5
    :cond_0
    const-string v1, "launchLongPressAction, keyCode="

    const-string v3, " "

    .line 6
    invoke-static {p3, v1, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7
    invoke-static {p1}, Lcom/android/server/policy/KeyCustomizationManager;->actionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "KeyCustomizationManager"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    const/4 v4, 0x1

    if-eq p1, v4, :cond_5

    const/4 v5, 0x2

    if-eq p1, v5, :cond_4

    const/4 v5, 0x3

    if-eq p1, v5, :cond_2

    if-eq p1, v0, :cond_1

    return v2

    .line 9
    :cond_1
    const-string p0, "launchLongPressAction was blocked by KeyCustomizationPolicy."

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v1, v0, p3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p0, p1, v0, p3, p2}, Lcom/android/server/policy/KeyCustomizationManager;->startService(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IILandroid/view/KeyEvent;)V

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/android/server/policy/KeyCustomizationManager;->sendBroadcast(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Landroid/view/KeyEvent;IZ)I

    move-result p0

    if-nez p0, :cond_7

    return v2

    .line 13
    :cond_5
    invoke-virtual {v1, v0, p3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_0

    .line 14
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->startActivity(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V

    :cond_7
    :goto_0
    return v4
.end method

.method public final launchLongPressAction(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    .line 2
    invoke-virtual {p0, v1, v0}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_0
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/policy/KeyCustomizationManager;->launchLongPressAction(ILandroid/view/KeyEvent;I)Z

    move-result p0

    return p0
.end method

.method public final launchMultiPressAction(Landroid/view/KeyEvent;I)V
    .locals 10

    .line 1
    const/4 v0, 0x5

    .line 2
    const-string v1, "KeyCustomizationManager"

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string p1, "launchMultiPressAction, event is null, Callers="

    .line 9
    .line 10
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x4

    .line 30
    const/4 v4, 0x3

    .line 31
    const/4 v5, 0x2

    .line 32
    if-ne p2, v5, :cond_1

    .line 33
    .line 34
    const/16 v0, 0x8

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    if-ne p2, v4, :cond_2

    .line 38
    .line 39
    const/16 v0, 0x10

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    if-ne p2, v3, :cond_3

    .line 43
    .line 44
    const/16 v0, 0x20

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    if-ne p2, v0, :cond_4

    .line 48
    .line 49
    const/16 v0, 0x40

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_4
    move v0, v2

    .line 53
    :goto_0
    if-nez v0, :cond_5

    .line 54
    .line 55
    return-void

    .line 56
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    iget-object v7, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 61
    .line 62
    invoke-virtual {v7, v0, v6}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    if-nez v7, :cond_6

    .line 67
    .line 68
    return-void

    .line 69
    :cond_6
    iget v8, v7, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    .line 70
    .line 71
    if-ne v8, v3, :cond_7

    .line 72
    .line 73
    return-void

    .line 74
    :cond_7
    invoke-virtual {p0, v0, v6}, Lcom/android/server/policy/KeyCustomizationManager;->hasHigherIdWithAllPress(II)Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_8

    .line 79
    .line 80
    return-void

    .line 81
    :cond_8
    const-string v3, "launchMultiPressAction, count="

    .line 82
    .line 83
    const-string v9, " keyCode="

    .line 84
    .line 85
    invoke-static {p2, v6, v3, v9, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const/4 v9, 0x1

    .line 89
    if-eq v8, v9, :cond_b

    .line 90
    .line 91
    if-eq v8, v5, :cond_a

    .line 92
    .line 93
    if-eq v8, v4, :cond_9

    .line 94
    .line 95
    const-string p0, " "

    .line 96
    .line 97
    invoke-static {p2, v3, p0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-static {v8}, Lcom/android/server/policy/KeyCustomizationManager;->actionToString(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string p1, " was wrong."

    .line 109
    .line 110
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_9
    invoke-virtual {p0, v7, v0, v6, p1}, Lcom/android/server/policy/KeyCustomizationManager;->startService(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IILandroid/view/KeyEvent;)V

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_a
    const/4 p2, 0x0

    .line 126
    invoke-virtual {p0, p2, p1, v0, v2}, Lcom/android/server/policy/KeyCustomizationManager;->sendBroadcast(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Landroid/view/KeyEvent;IZ)I

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_b
    invoke-virtual {p0, v7}, Lcom/android/server/policy/KeyCustomizationManager;->startActivity(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V

    .line 131
    .line 132
    .line 133
    :goto_1
    return-void
.end method

.method public final launchPressAction(ILandroid/view/KeyEvent;IZ)Z
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0, p3}, Lcom/android/server/policy/KeyCustomizationManager;->hasHigherIdWithAllPress(II)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return v2

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    if-eq p1, v3, :cond_4

    .line 14
    .line 15
    if-eq p1, v0, :cond_2

    .line 16
    .line 17
    if-eqz p4, :cond_1

    .line 18
    .line 19
    const/4 p2, -0x1

    .line 20
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 21
    .line 22
    const/high16 v0, 0x10000000

    .line 23
    .line 24
    invoke-virtual {p0, p3, v0, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->injectionKeyEvent(III)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return v2

    .line 29
    :cond_2
    invoke-virtual {v1, v0, p3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-nez v1, :cond_3

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_3
    invoke-virtual {p0, v1, v0, p3, p2}, Lcom/android/server/policy/KeyCustomizationManager;->startService(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IILandroid/view/KeyEvent;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_4
    invoke-virtual {v1, v0, p3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    if-nez p2, :cond_5

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_5
    invoke-virtual {p0, p2}, Lcom/android/server/policy/KeyCustomizationManager;->startActivity(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    const-string p0, "launchPressAction, keyCode="

    .line 51
    .line 52
    const-string p2, " "

    .line 53
    .line 54
    invoke-static {p3, p0, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-static {p1}, Lcom/android/server/policy/KeyCustomizationManager;->actionToString(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string p1, " forceDispatching="

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    const-string p1, "KeyCustomizationManager"

    .line 78
    .line 79
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    return v3
.end method

.method public final launchPressSendBroadcast(Landroid/view/KeyEvent;IZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-virtual {v0, v1, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v3, "launchPressSendBroadcast, keyCode="

    .line 14
    .line 15
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p2, " isKeyLongPressed="

    .line 22
    .line 23
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const-string v2, "KeyCustomizationManager"

    .line 34
    .line 35
    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0, p1, v1, p3}, Lcom/android/server/policy/KeyCustomizationManager;->sendBroadcast(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Landroid/view/KeyEvent;IZ)I

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final launchXCoverDefaultAction(Ljava/lang/String;ILandroid/view/KeyEvent;Z)Z
    .locals 5

    .line 1
    const-string/jumbo v0, "torch/torch"

    .line 2
    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/16 v2, 0x437

    .line 16
    .line 17
    if-ne v0, v2, :cond_0

    .line 18
    .line 19
    iget-boolean v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsTopKeyOnLockScreen:Z

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsXCoverKeyOnLockScreen:Z

    .line 23
    .line 24
    :goto_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    iget-object v3, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 29
    .line 30
    iget-object v4, v3, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    :cond_1
    invoke-virtual {v3, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->onFlashlightKeyPressed(I)V

    .line 41
    .line 42
    .line 43
    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 44
    .line 45
    if-eqz p0, :cond_2

    .line 46
    .line 47
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    invoke-static {p2, p0}, Lcom/android/server/policy/KeyCustomizationManager;->getEventId(II)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    const-string p1, "Torch"

    .line 56
    .line 57
    invoke-static {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    return v1

    .line 61
    :cond_3
    const/4 v0, 0x0

    .line 62
    if-nez p4, :cond_4

    .line 63
    .line 64
    return v0

    .line 65
    :cond_4
    const-string p4, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    .line 66
    .line 67
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_8

    .line 72
    .line 73
    invoke-static {p4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const-string p2, "android.intent.action.MAIN"

    .line 78
    .line 79
    const-string p3, "android.intent.category.LAUNCHER"

    .line 80
    .line 81
    invoke-static {p2, p3}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    iget-object p3, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 86
    .line 87
    const-string p4, "keyguard"

    .line 88
    .line 89
    if-nez p3, :cond_5

    .line 90
    .line 91
    iget-object p3, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    .line 92
    .line 93
    invoke-virtual {p3, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p3

    .line 97
    check-cast p3, Landroid/app/KeyguardManager;

    .line 98
    .line 99
    iput-object p3, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 100
    .line 101
    :cond_5
    iget-object p3, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 102
    .line 103
    invoke-virtual {p3}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    .line 104
    .line 105
    .line 106
    move-result p3

    .line 107
    const-string v0, "isSecure"

    .line 108
    .line 109
    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 110
    .line 111
    .line 112
    const-string p3, "isQuickLaunchMode"

    .line 113
    .line 114
    invoke-virtual {p2, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 118
    .line 119
    .line 120
    const/high16 p1, 0x10000000

    .line 121
    .line 122
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 126
    .line 127
    if-nez p1, :cond_6

    .line 128
    .line 129
    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    .line 130
    .line 131
    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    check-cast p1, Landroid/app/KeyguardManager;

    .line 136
    .line 137
    iput-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 138
    .line 139
    :cond_6
    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 140
    .line 141
    invoke-virtual {p1}, Landroid/app/KeyguardManager;->semIsKeyguardShowingAndNotOccluded()Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-eqz p1, :cond_7

    .line 146
    .line 147
    const/high16 p1, 0x24000000

    .line 148
    .line 149
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_7
    const/high16 p1, 0x200000

    .line 154
    .line 155
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 156
    .line 157
    .line 158
    :goto_1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    .line 159
    .line 160
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .line 162
    .line 163
    goto :goto_2

    .line 164
    :catch_0
    move-exception p0

    .line 165
    const-string p1, "KeyCustomizationManager"

    .line 166
    .line 167
    const-string p2, "No activity to launch Camera, "

    .line 168
    .line 169
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    .line 171
    .line 172
    :goto_2
    return v1

    .line 173
    :cond_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    if-nez p1, :cond_a

    .line 178
    .line 179
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    iget-object p3, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 184
    .line 185
    invoke-virtual {p3, p2, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    if-nez p1, :cond_9

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->startActivity(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V

    .line 193
    .line 194
    .line 195
    :goto_3
    return v1

    .line 196
    :cond_a
    return v0
.end method

.method public final launchXCoverLongActionIfNeeded(Landroid/view/KeyEvent;Z)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "KeyCustomizationManager"

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string p0, "Block handling XCoverKey because of Automatic Test Mode"

    .line 13
    .line 14
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v3, 0x3

    .line 23
    invoke-virtual {p0, v3, v0}, Lcom/android/server/policy/KeyCustomizationManager;->hasHigherIdWithOppositePress(II)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v3, 0x1

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    const-string p0, "Can not launch long press action by knox policy"

    .line 31
    .line 32
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    return v3

    .line 36
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iget-object v4, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 41
    .line 42
    const/4 v5, 0x4

    .line 43
    invoke-virtual {v4, v5, v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    iget-object v0, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const/4 v0, 0x0

    .line 59
    :goto_0
    if-nez v0, :cond_3

    .line 60
    .line 61
    return v1

    .line 62
    :cond_3
    iget-object v4, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerExt;->isCameraRunning()Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-eqz v6, :cond_4

    .line 72
    .line 73
    if-nez p2, :cond_4

    .line 74
    .line 75
    const-string p0, "Can not launch dedicated long action. Camera is running."

    .line 76
    .line 77
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    return v1

    .line 81
    :cond_4
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const-string/jumbo v1, "quickMessageSender/quickMessageSender"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_7

    .line 93
    .line 94
    iget-boolean p2, v4, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSamsungKeyboard:Z

    .line 95
    .line 96
    if-eqz p2, :cond_5

    .line 97
    .line 98
    iput-boolean v3, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsCalledOpenDictationXCoverTop:Z

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    invoke-virtual {v4, p0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->openDictationIfNeeded(IZ)Z

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_5
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    .line 109
    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    const v0, 0x1041006

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    invoke-virtual {v4, p0, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :goto_1
    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 125
    .line 126
    if-eqz p0, :cond_6

    .line 127
    .line 128
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 129
    .line 130
    .line 131
    move-result p0

    .line 132
    invoke-static {v5, p0}, Lcom/android/server/policy/KeyCustomizationManager;->getEventId(II)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    const-string p1, "Voice to text message"

    .line 137
    .line 138
    invoke-static {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    :cond_6
    return v3

    .line 142
    :cond_7
    invoke-virtual {p0, v0, v5, p1}, Lcom/android/server/policy/KeyCustomizationManager;->launchXCoverTopDedicatedAction(Ljava/lang/String;ILandroid/view/KeyEvent;)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_8

    .line 147
    .line 148
    return v3

    .line 149
    :cond_8
    invoke-virtual {p0, v0, v5, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->launchXCoverDefaultAction(Ljava/lang/String;ILandroid/view/KeyEvent;Z)Z

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    return p0
.end method

.method public final launchXCoverPressActionIfNeeded(Landroid/view/KeyEvent;Z)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "KeyCustomizationManager"

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string p0, "Block handling XCoverKey because of Automatic Test Mode"

    .line 13
    .line 14
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v3, 0x4

    .line 23
    invoke-virtual {p0, v3, v0}, Lcom/android/server/policy/KeyCustomizationManager;->hasHigherIdWithOppositePress(II)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v3, 0x1

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    const-string p0, "Can not launch press action by knox policy"

    .line 31
    .line 32
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    return v3

    .line 36
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iget-object v4, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 41
    .line 42
    const/4 v5, 0x3

    .line 43
    invoke-virtual {v4, v5, v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    iget-object v0, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const/4 v0, 0x0

    .line 59
    :goto_0
    if-nez v0, :cond_3

    .line 60
    .line 61
    return v1

    .line 62
    :cond_3
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v4, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 67
    .line 68
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerExt;->isCameraRunning()Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_4

    .line 76
    .line 77
    if-nez p2, :cond_4

    .line 78
    .line 79
    const-string p0, "Can not launch dedicated action. Camera is running."

    .line 80
    .line 81
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_4
    invoke-virtual {p0, v0, v5, p1}, Lcom/android/server/policy/KeyCustomizationManager;->launchXCoverTopDedicatedAction(Ljava/lang/String;ILandroid/view/KeyEvent;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_5

    .line 90
    .line 91
    move v1, v3

    .line 92
    goto :goto_1

    .line 93
    :cond_5
    invoke-virtual {p0, v0, v5, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->launchXCoverDefaultAction(Ljava/lang/String;ILandroid/view/KeyEvent;Z)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    :goto_1
    return v1
.end method

.method public final launchXCoverTopDedicatedAction(Ljava/lang/String;ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    const-string v0, "home/home"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 13
    .line 14
    invoke-virtual {p1, p3}, Lcom/android/server/policy/PhoneWindowManager;->postShortPressOnHome(Landroid/view/KeyEvent;)V

    .line 15
    .line 16
    .line 17
    const-string p1, "Home"

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string v0, "back/back"

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/4 v0, 0x0

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    const/4 p1, 0x4

    .line 30
    const/4 v2, -0x1

    .line 31
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->injectionKeyEvent(III)V

    .line 32
    .line 33
    .line 34
    const-string p1, "Back"

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 p1, 0x0

    .line 38
    move v1, v0

    .line 39
    :goto_0
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 44
    .line 45
    .line 46
    move-result p3

    .line 47
    invoke-static {p2, p3}, Lcom/android/server/policy/KeyCustomizationManager;->getEventId(II)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    invoke-static {p2, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    return v1
.end method

.method public final prepareVoiceToTextMessage(Landroid/view/KeyEvent;I)V
    .locals 2

    .line 1
    invoke-static {p2}, Lcom/android/server/policy/KeyCustomizationManager;->isXCoverOrTopKey(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    invoke-virtual {v0, v1, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    :goto_0
    if-eqz v0, :cond_4

    .line 28
    .line 29
    const-string/jumbo v1, "quickMessageSender/quickMessageSender"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    const/4 v0, 0x0

    .line 48
    if-nez p1, :cond_3

    .line 49
    .line 50
    iput-boolean v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsCalledOpenDictationXCoverTop:Z

    .line 51
    .line 52
    return-void

    .line 53
    :cond_3
    iget-boolean p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsCalledOpenDictationXCoverTop:Z

    .line 54
    .line 55
    if-eqz p1, :cond_4

    .line 56
    .line 57
    iput-boolean v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsCalledOpenDictationXCoverTop:Z

    .line 58
    .line 59
    sget-boolean p1, Lcom/samsung/android/rune/InputRune;->PWM_SUPPORT_DICTATION_SAMSUNG_KEYBOARD:Z

    .line 60
    .line 61
    if-eqz p1, :cond_4

    .line 62
    .line 63
    const-string p1, "close_dictation"

    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 66
    .line 67
    invoke-virtual {p0, p2, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->callDictation(ILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_4
    :goto_1
    return-void
.end method

.method public final putKeyCustomizationInfo(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    iget v3, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->press:I

    .line 7
    .line 8
    iget v4, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->keyCode:I

    .line 9
    .line 10
    iget v5, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    .line 11
    .line 12
    iget-object v6, v0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 13
    .line 14
    const/4 v7, 0x4

    .line 15
    const/16 v8, 0x8

    .line 16
    .line 17
    if-lt v3, v8, :cond_0

    .line 18
    .line 19
    if-ne v5, v7, :cond_0

    .line 20
    .line 21
    iget-object v9, v6, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 22
    .line 23
    iget-object v9, v9, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 24
    .line 25
    invoke-virtual {v9, v4}, Lcom/android/server/policy/SingleKeyGestureDetector;->hasRule(I)Z

    .line 26
    .line 27
    .line 28
    move-result v9

    .line 29
    if-nez v9, :cond_0

    .line 30
    .line 31
    sget-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    iget v9, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->press:I

    .line 35
    .line 36
    iget v10, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->keyCode:I

    .line 37
    .line 38
    iget v11, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    .line 39
    .line 40
    iget v12, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    .line 41
    .line 42
    const/4 v13, 0x2

    .line 43
    if-ne v11, v13, :cond_2

    .line 44
    .line 45
    iget-object v14, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    .line 46
    .line 47
    invoke-static {v14}, Lcom/android/server/policy/KeyCustomizationManager;->isKgIntent(Landroid/content/Intent;)Z

    .line 48
    .line 49
    .line 50
    move-result v14

    .line 51
    if-nez v14, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 55
    .line 56
    const-string v1, "The intent is not allowed for KG."

    .line 57
    .line 58
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v0

    .line 62
    :cond_2
    :goto_0
    const-string v15, " are not supported in the requested keyCode("

    .line 63
    .line 64
    const-string v14, " and "

    .line 65
    .line 66
    const-string v8, ")."

    .line 67
    .line 68
    if-eq v10, v2, :cond_5

    .line 69
    .line 70
    if-eq v10, v7, :cond_7

    .line 71
    .line 72
    const/16 v13, 0x4f

    .line 73
    .line 74
    if-eq v10, v13, :cond_9

    .line 75
    .line 76
    const/16 v13, 0xbb

    .line 77
    .line 78
    if-eq v10, v13, :cond_7

    .line 79
    .line 80
    const/16 v13, 0x3f7

    .line 81
    .line 82
    if-eq v10, v13, :cond_9

    .line 83
    .line 84
    const/16 v13, 0x437

    .line 85
    .line 86
    if-eq v10, v13, :cond_9

    .line 87
    .line 88
    packed-switch v10, :pswitch_data_0

    .line 89
    .line 90
    .line 91
    packed-switch v10, :pswitch_data_1

    .line 92
    .line 93
    .line 94
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    invoke-static {v8}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    if-eqz v8, :cond_3

    .line 103
    .line 104
    and-int/lit8 v8, v9, 0x3

    .line 105
    .line 106
    if-eqz v8, :cond_3

    .line 107
    .line 108
    if-ne v11, v7, :cond_3

    .line 109
    .line 110
    const/16 v8, 0xa

    .line 111
    .line 112
    if-ne v12, v8, :cond_3

    .line 113
    .line 114
    goto/16 :goto_2

    .line 115
    .line 116
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 117
    .line 118
    const-string/jumbo v1, "requested keyCode("

    .line 119
    .line 120
    .line 121
    const-string v2, ") was wrong. The keyCode is not supported."

    .line 122
    .line 123
    invoke-static {v10, v1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw v0

    .line 131
    :pswitch_0
    and-int/lit8 v13, v9, 0x3

    .line 132
    .line 133
    if-eqz v13, :cond_4

    .line 134
    .line 135
    and-int/lit8 v13, v9, 0x4

    .line 136
    .line 137
    if-nez v13, :cond_4

    .line 138
    .line 139
    const/16 v13, 0x8

    .line 140
    .line 141
    and-int/lit8 v15, v9, 0x8

    .line 142
    .line 143
    if-nez v15, :cond_4

    .line 144
    .line 145
    goto/16 :goto_2

    .line 146
    .line 147
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 148
    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-static {v9}, Lcom/android/server/policy/KeyCustomizationManager;->pressToString(I)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v2, " is not supported in the requested keyCode("

    .line 162
    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    throw v0

    .line 180
    :cond_5
    sget-boolean v13, Lcom/samsung/android/rune/InputRune;->PWM_HOME_KEY_LONG_PRESS_SEARCLE:Z

    .line 181
    .line 182
    if-eqz v13, :cond_7

    .line 183
    .line 184
    and-int/lit8 v13, v9, 0x4

    .line 185
    .line 186
    if-eqz v13, :cond_7

    .line 187
    .line 188
    invoke-static {v12}, Lcom/android/server/policy/KeyCustomizationManager;->isKnoxId(I)Z

    .line 189
    .line 190
    .line 191
    move-result v13

    .line 192
    if-eqz v13, :cond_6

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 196
    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .line 201
    .line 202
    invoke-static {v9}, Lcom/android/server/policy/KeyCustomizationManager;->pressToString(I)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-static {v12}, Lcom/android/server/policy/KeyCustomizationManager;->idToString(I)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-static {v10, v1, v8}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    throw v0

    .line 230
    :cond_7
    :goto_1
    :pswitch_1
    and-int/lit8 v13, v9, 0x3

    .line 231
    .line 232
    if-eqz v13, :cond_9

    .line 233
    .line 234
    const/4 v13, 0x1

    .line 235
    if-eq v11, v13, :cond_8

    .line 236
    .line 237
    if-eq v11, v2, :cond_8

    .line 238
    .line 239
    goto :goto_2

    .line 240
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 241
    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .line 246
    .line 247
    invoke-static {v9}, Lcom/android/server/policy/KeyCustomizationManager;->pressToString(I)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-static {v11}, Lcom/android/server/policy/KeyCustomizationManager;->actionToString(I)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-static {v10, v1, v8}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    throw v0

    .line 275
    :cond_9
    :goto_2
    const/16 v8, 0x44c

    .line 276
    .line 277
    const/16 v13, 0x453

    .line 278
    .line 279
    const-string/jumbo v15, "requested "

    .line 280
    .line 281
    .line 282
    if-nez v11, :cond_b

    .line 283
    .line 284
    if-lt v12, v8, :cond_a

    .line 285
    .line 286
    if-gt v12, v13, :cond_a

    .line 287
    .line 288
    goto :goto_3

    .line 289
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 290
    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    .line 292
    .line 293
    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    invoke-static {v11}, Lcom/android/server/policy/KeyCustomizationManager;->actionToString(I)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-static {v12}, Lcom/android/server/policy/KeyCustomizationManager;->idToString(I)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    const-string v2, " was wrong."

    .line 314
    .line 315
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    throw v0

    .line 326
    :cond_b
    const/4 v14, 0x1

    .line 327
    if-eq v11, v14, :cond_d

    .line 328
    .line 329
    const/4 v14, 0x2

    .line 330
    if-eq v11, v14, :cond_d

    .line 331
    .line 332
    if-eq v11, v2, :cond_d

    .line 333
    .line 334
    if-ne v11, v7, :cond_c

    .line 335
    .line 336
    goto :goto_3

    .line 337
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 338
    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    .line 340
    .line 341
    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    invoke-static {v11}, Lcom/android/server/policy/KeyCustomizationManager;->actionToString(I)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v2

    .line 348
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    const-string v2, " was wrong. The action is not supported."

    .line 352
    .line 353
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    throw v0

    .line 364
    :cond_d
    :goto_3
    iget v11, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->dispatching:I

    .line 365
    .line 366
    if-eqz v11, :cond_f

    .line 367
    .line 368
    const/4 v14, -0x1

    .line 369
    if-ne v11, v14, :cond_e

    .line 370
    .line 371
    goto :goto_4

    .line 372
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 373
    .line 374
    const-string/jumbo v1, "requested dispatching("

    .line 375
    .line 376
    .line 377
    const-string v2, ") was wrong."

    .line 378
    .line 379
    invoke-static {v11, v1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    throw v0

    .line 387
    :cond_f
    :goto_4
    const/16 v11, 0x7d3

    .line 388
    .line 389
    const/16 v14, 0xa

    .line 390
    .line 391
    if-eq v12, v14, :cond_12

    .line 392
    .line 393
    const/16 v14, 0x1e

    .line 394
    .line 395
    if-eq v12, v14, :cond_12

    .line 396
    .line 397
    const/16 v14, 0x32

    .line 398
    .line 399
    if-eq v12, v14, :cond_12

    .line 400
    .line 401
    const/16 v14, 0x3b7

    .line 402
    .line 403
    if-eq v12, v14, :cond_12

    .line 404
    .line 405
    if-lt v12, v8, :cond_10

    .line 406
    .line 407
    if-le v12, v13, :cond_12

    .line 408
    .line 409
    :cond_10
    const/16 v8, 0x7d0

    .line 410
    .line 411
    if-lt v12, v8, :cond_11

    .line 412
    .line 413
    if-gt v12, v11, :cond_11

    .line 414
    .line 415
    goto :goto_5

    .line 416
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 417
    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    .line 419
    .line 420
    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    invoke-static {v12}, Lcom/android/server/policy/KeyCustomizationManager;->idToString(I)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    const-string v2, " was wrong. The id is not supported."

    .line 431
    .line 432
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    throw v0

    .line 443
    :cond_12
    :goto_5
    iget-object v8, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    .line 444
    .line 445
    if-ne v12, v11, :cond_14

    .line 446
    .line 447
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 448
    .line 449
    .line 450
    move-result v8

    .line 451
    if-nez v8, :cond_13

    .line 452
    .line 453
    goto :goto_6

    .line 454
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 455
    .line 456
    const-string/jumbo v1, "requested ownerPackage was empty."

    .line 457
    .line 458
    .line 459
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    throw v0

    .line 463
    :cond_14
    :goto_6
    and-int/lit8 v8, v9, 0x3

    .line 464
    .line 465
    if-nez v8, :cond_16

    .line 466
    .line 467
    and-int/lit8 v11, v9, 0x4

    .line 468
    .line 469
    if-nez v11, :cond_16

    .line 470
    .line 471
    const/16 v11, 0x8

    .line 472
    .line 473
    and-int/lit8 v14, v9, 0x8

    .line 474
    .line 475
    if-nez v14, :cond_16

    .line 476
    .line 477
    and-int/lit8 v11, v9, 0x10

    .line 478
    .line 479
    if-nez v11, :cond_16

    .line 480
    .line 481
    and-int/lit8 v11, v9, 0x20

    .line 482
    .line 483
    if-nez v11, :cond_16

    .line 484
    .line 485
    and-int/lit8 v11, v9, 0x40

    .line 486
    .line 487
    if-eqz v11, :cond_15

    .line 488
    .line 489
    goto :goto_7

    .line 490
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 491
    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    .line 493
    .line 494
    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    invoke-static {v9}, Lcom/android/server/policy/KeyCustomizationManager;->pressToString(I)Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v2

    .line 501
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    const-string v2, " was wrong. The press is not supported."

    .line 505
    .line 506
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v1

    .line 513
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    throw v0

    .line 517
    :cond_16
    :goto_7
    sget-boolean v11, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_TRIPLE_PRESS_PANIC_CALL:Z

    .line 518
    .line 519
    const/16 v14, 0x1a

    .line 520
    .line 521
    if-eqz v11, :cond_18

    .line 522
    .line 523
    if-ne v10, v14, :cond_18

    .line 524
    .line 525
    and-int/lit8 v15, v9, 0x10

    .line 526
    .line 527
    if-nez v15, :cond_17

    .line 528
    .line 529
    goto :goto_8

    .line 530
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 531
    .line 532
    const-string v1, "Triple press of Power key is not supported."

    .line 533
    .line 534
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    throw v0

    .line 538
    :cond_18
    :goto_8
    sget-boolean v15, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_QUINTUPLE_PRESS_EMERGENCY_SOS:Z

    .line 539
    .line 540
    if-nez v15, :cond_19

    .line 541
    .line 542
    if-eqz v11, :cond_1b

    .line 543
    .line 544
    :cond_19
    if-ne v10, v14, :cond_1b

    .line 545
    .line 546
    and-int/lit8 v10, v9, 0x40

    .line 547
    .line 548
    if-nez v10, :cond_1a

    .line 549
    .line 550
    goto :goto_9

    .line 551
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 552
    .line 553
    const-string v1, "Quintuple press of Power key is not supported."

    .line 554
    .line 555
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    throw v0

    .line 559
    :cond_1b
    :goto_9
    and-int/lit8 v10, v9, 0x4

    .line 560
    .line 561
    if-nez v10, :cond_1c

    .line 562
    .line 563
    const/16 v11, 0x8

    .line 564
    .line 565
    and-int/lit8 v15, v9, 0x8

    .line 566
    .line 567
    if-eqz v15, :cond_1d

    .line 568
    .line 569
    :cond_1c
    if-eq v12, v13, :cond_28

    .line 570
    .line 571
    :cond_1d
    iget-wide v11, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->longPressTimeout:J

    .line 572
    .line 573
    const-wide/16 v15, 0x0

    .line 574
    .line 575
    cmp-long v13, v11, v15

    .line 576
    .line 577
    move/from16 v17, v3

    .line 578
    .line 579
    if-eqz v13, :cond_1f

    .line 580
    .line 581
    iget-wide v2, v0, Lcom/android/server/policy/KeyCustomizationManager;->defaultLongPressTimeout:J

    .line 582
    .line 583
    cmp-long v2, v11, v2

    .line 584
    .line 585
    if-ltz v2, :cond_1e

    .line 586
    .line 587
    goto :goto_a

    .line 588
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 589
    .line 590
    const-string v1, "The longPressTimeout was wrong."

    .line 591
    .line 592
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 593
    .line 594
    .line 595
    throw v0

    .line 596
    :cond_1f
    :goto_a
    if-lez v13, :cond_21

    .line 597
    .line 598
    if-eqz v10, :cond_20

    .line 599
    .line 600
    goto :goto_b

    .line 601
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 602
    .line 603
    const-string v1, "The longPressTimeout only supported with long press"

    .line 604
    .line 605
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 606
    .line 607
    .line 608
    throw v0

    .line 609
    :cond_21
    :goto_b
    iget-wide v2, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->multiPressTimeout:J

    .line 610
    .line 611
    cmp-long v2, v2, v15

    .line 612
    .line 613
    if-eqz v2, :cond_23

    .line 614
    .line 615
    if-nez v8, :cond_22

    .line 616
    .line 617
    if-nez v10, :cond_22

    .line 618
    .line 619
    goto :goto_c

    .line 620
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 621
    .line 622
    new-instance v1, Ljava/lang/StringBuilder;

    .line 623
    .line 624
    const-string v2, "The multiPressTimeout is not supported with "

    .line 625
    .line 626
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 627
    .line 628
    .line 629
    invoke-static {v9}, Lcom/android/server/policy/KeyCustomizationManager;->pressToString(I)Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v2

    .line 633
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v1

    .line 640
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    throw v0

    .line 644
    :cond_23
    :goto_c
    sget-object v2, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 645
    .line 646
    iget-object v2, v0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 647
    .line 648
    const/4 v3, 0x0

    .line 649
    invoke-virtual {v2, v1, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->put(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Z)V

    .line 650
    .line 651
    .line 652
    if-ne v4, v14, :cond_24

    .line 653
    .line 654
    move/from16 v2, v17

    .line 655
    .line 656
    invoke-virtual {v0, v2}, Lcom/android/server/policy/KeyCustomizationManager;->updatePowerBehavior(I)V

    .line 657
    .line 658
    .line 659
    goto :goto_d

    .line 660
    :cond_24
    move/from16 v2, v17

    .line 661
    .line 662
    if-ne v5, v7, :cond_25

    .line 663
    .line 664
    const/16 v5, 0x8

    .line 665
    .line 666
    if-lt v2, v5, :cond_25

    .line 667
    .line 668
    invoke-virtual {v6, v4}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateSingleKeyGestureRule(I)V

    .line 669
    .line 670
    .line 671
    goto :goto_d

    .line 672
    :cond_25
    const/4 v5, 0x3

    .line 673
    and-int/2addr v5, v2

    .line 674
    if-eqz v5, :cond_26

    .line 675
    .line 676
    return-void

    .line 677
    :cond_26
    and-int/lit8 v5, v2, 0x4

    .line 678
    .line 679
    if-eqz v5, :cond_27

    .line 680
    .line 681
    iget-wide v7, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->longPressTimeout:J

    .line 682
    .line 683
    cmp-long v5, v7, v15

    .line 684
    .line 685
    if-nez v5, :cond_27

    .line 686
    .line 687
    return-void

    .line 688
    :cond_27
    invoke-virtual {v6, v4}, Lcom/android/server/policy/PhoneWindowManagerExt;->addSingleKeyGestureRule(I)V

    .line 689
    .line 690
    .line 691
    :goto_d
    invoke-virtual {v0, v2, v4, v3}, Lcom/android/server/policy/KeyCustomizationManager;->updateLongPressTimeoutIfNeeded(IIZ)V

    .line 692
    .line 693
    .line 694
    iget-wide v5, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->multiPressTimeout:J

    .line 695
    .line 696
    const/4 v3, 0x0

    .line 697
    move-object/from16 v0, p0

    .line 698
    .line 699
    move v1, v2

    .line 700
    move v2, v4

    .line 701
    move-wide v4, v5

    .line 702
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/KeyCustomizationManager;->updateMultiPressTimeoutIfNeeded(IIZJ)V

    .line 703
    .line 704
    .line 705
    return-void

    .line 706
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 707
    .line 708
    const-string v1, "The long or double press is not supported with mouse button id."

    .line 709
    .line 710
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 711
    .line 712
    .line 713
    throw v0

    .line 714
    nop

    .line 715
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    :pswitch_data_1
    .packed-switch 0x445
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final removeKeyCustomizationInfo(IIILjava/lang/String;)V
    .locals 11

    .line 1
    sget-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    invoke-virtual {v0, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eqz v2, :cond_d

    .line 17
    .line 18
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    goto/16 :goto_7

    .line 31
    .line 32
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    const/4 v0, 0x0

    .line 34
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 35
    .line 36
    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->get(IIILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-wide/16 v1, 0x0

    .line 41
    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    move-wide v3, v1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-wide v3, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->multiPressTimeout:J

    .line 47
    .line 48
    :goto_0
    iget-object v5, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 49
    .line 50
    const/4 v10, 0x0

    .line 51
    move v6, p1

    .line 52
    move v7, p2

    .line 53
    move-object v8, p4

    .line 54
    move v9, p3

    .line 55
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/policy/KeyCustomizationInfoManager;->remove(IILjava/lang/String;IZ)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_2

    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    const/16 p1, 0x1a

    .line 63
    .line 64
    if-ne p3, p1, :cond_3

    .line 65
    .line 66
    invoke-virtual {p0, p2}, Lcom/android/server/policy/KeyCustomizationManager;->updatePowerBehavior(I)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 71
    .line 72
    invoke-virtual {p1, p3}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateSingleKeyGestureRule(I)V

    .line 73
    .line 74
    .line 75
    :goto_1
    and-int/lit8 p1, p2, 0x4

    .line 76
    .line 77
    if-eqz p1, :cond_5

    .line 78
    .line 79
    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 80
    .line 81
    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 82
    .line 83
    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 84
    .line 85
    iget-object p1, p1, Lcom/android/server/policy/SingleKeyGestureDetector;->mCustomRules:Landroid/util/SparseArray;

    .line 86
    .line 87
    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 92
    .line 93
    if-nez p1, :cond_4

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getLongPressTimeoutMs()J

    .line 97
    .line 98
    .line 99
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 100
    .line 101
    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 102
    .line 103
    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 104
    .line 105
    iget-object p1, p1, Lcom/android/server/policy/SingleKeyGestureDetector;->mCustomRules:Landroid/util/SparseArray;

    .line 106
    .line 107
    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    check-cast p1, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 112
    .line 113
    if-nez p1, :cond_6

    .line 114
    .line 115
    move-wide v5, v1

    .line 116
    goto :goto_3

    .line 117
    :cond_6
    iget-wide v5, p1, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->extensionMultiPressTimeout:J

    .line 118
    .line 119
    cmp-long p1, v5, v1

    .line 120
    .line 121
    if-eqz p1, :cond_7

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_7
    sget-wide v5, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultMultiPressTimeout:J

    .line 125
    .line 126
    :goto_3
    cmp-long p1, v3, v1

    .line 127
    .line 128
    if-lez p1, :cond_c

    .line 129
    .line 130
    cmp-long p1, v5, v3

    .line 131
    .line 132
    if-nez p1, :cond_c

    .line 133
    .line 134
    sget-object p1, Lcom/android/server/policy/KeyCustomizationConstants;->NEEDED_UPDATE_BEHAVIOR_MULTI_PRESS_TYPE:[I

    .line 135
    .line 136
    array-length p4, p1

    .line 137
    const/4 v0, 0x0

    .line 138
    move-wide v7, v1

    .line 139
    :goto_4
    if-ge v0, p4, :cond_b

    .line 140
    .line 141
    aget v3, p1, v0

    .line 142
    .line 143
    and-int/lit8 v4, v3, 0x4

    .line 144
    .line 145
    if-eqz v4, :cond_8

    .line 146
    .line 147
    goto :goto_6

    .line 148
    :cond_8
    iget-object v4, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 149
    .line 150
    invoke-virtual {v4, v3, p3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    if-nez v3, :cond_9

    .line 155
    .line 156
    move-wide v3, v1

    .line 157
    goto :goto_5

    .line 158
    :cond_9
    iget-wide v3, v3, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->multiPressTimeout:J

    .line 159
    .line 160
    :goto_5
    cmp-long v5, v7, v3

    .line 161
    .line 162
    if-gez v5, :cond_a

    .line 163
    .line 164
    move-wide v7, v3

    .line 165
    :cond_a
    :goto_6
    add-int/lit8 v0, v0, 0x1

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_b
    const/4 v6, 0x1

    .line 169
    move-object v3, p0

    .line 170
    move v4, p2

    .line 171
    move v5, p3

    .line 172
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/policy/KeyCustomizationManager;->updateMultiPressTimeoutIfNeeded(IIZJ)V

    .line 173
    .line 174
    .line 175
    :cond_c
    return-void

    .line 176
    :catchall_0
    move-exception p0

    .line 177
    goto :goto_8

    .line 178
    :cond_d
    :goto_7
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    const-string p0, "KeyCustomizationManager"

    .line 180
    .line 181
    new-instance p4, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    const-string v0, "Requested info has been removed. "

    .line 184
    .line 185
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-static {p1}, Lcom/android/server/policy/KeyCustomizationManager;->idToString(I)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string p1, " keyCode="

    .line 196
    .line 197
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string p1, " "

    .line 204
    .line 205
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-static {p2}, Lcom/android/server/policy/KeyCustomizationManager;->pressToString(I)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    return-void

    .line 223
    :goto_8
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 224
    throw p0
.end method

.method public final sendBroadcast(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Landroid/view/KeyEvent;IZ)I
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    const/16 v5, 0x8

    .line 6
    .line 7
    const/4 v6, 0x4

    .line 8
    const/4 v7, 0x1

    .line 9
    const/4 v8, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return v8

    .line 13
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 14
    .line 15
    .line 16
    move-result v9

    .line 17
    invoke-virtual {v0, v1, v9}, Lcom/android/server/policy/KeyCustomizationManager;->hasHigherIdWithAllPress(II)Z

    .line 18
    .line 19
    .line 20
    move-result v10

    .line 21
    if-eqz v10, :cond_1

    .line 22
    .line 23
    return v8

    .line 24
    :cond_1
    if-nez p1, :cond_2

    .line 25
    .line 26
    iget-object v10, v0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 27
    .line 28
    invoke-virtual {v10, v1, v9}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 29
    .line 30
    .line 31
    move-result-object v10

    .line 32
    if-nez v10, :cond_3

    .line 33
    .line 34
    return v8

    .line 35
    :cond_2
    move-object/from16 v10, p1

    .line 36
    .line 37
    :cond_3
    iget v11, v10, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    .line 38
    .line 39
    iget v12, v10, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->userId:I

    .line 40
    .line 41
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    .line 42
    .line 43
    .line 44
    move-result v13

    .line 45
    if-nez v13, :cond_4

    .line 46
    .line 47
    move v13, v7

    .line 48
    goto :goto_0

    .line 49
    :cond_4
    move v13, v8

    .line 50
    :goto_0
    iget-object v14, v10, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    .line 51
    .line 52
    and-int/lit8 v15, v1, 0x4

    .line 53
    .line 54
    if-eqz v15, :cond_5

    .line 55
    .line 56
    move/from16 v16, v7

    .line 57
    .line 58
    move/from16 v17, v8

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_5
    and-int/lit8 v16, v1, 0x8

    .line 62
    .line 63
    if-eqz v16, :cond_6

    .line 64
    .line 65
    move/from16 v17, v7

    .line 66
    .line 67
    move/from16 v16, v8

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_6
    move/from16 v16, v8

    .line 71
    .line 72
    move/from16 v17, v16

    .line 73
    .line 74
    :goto_1
    const-string v5, "com.samsung.android.knox.intent.extra.KEY_REPORT_TYPE_NEW"

    .line 75
    .line 76
    const-string v6, "com.samsung.android.knox.intent.extra.EXTRA_REPORT_TYPE_NEW_LONG_UP"

    .line 77
    .line 78
    const-string v2, "com.samsung.android.knox.intent.extra.KEY_CODE"

    .line 79
    .line 80
    const-string v3, "KeyCustomizationManager"

    .line 81
    .line 82
    if-nez v14, :cond_10

    .line 83
    .line 84
    invoke-static {v11}, Lcom/android/server/policy/KeyCustomizationManager;->isKnoxId(I)Z

    .line 85
    .line 86
    .line 87
    move-result v14

    .line 88
    if-nez v14, :cond_7

    .line 89
    .line 90
    const/4 v2, 0x0

    .line 91
    move-object v14, v2

    .line 92
    goto :goto_5

    .line 93
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 94
    .line 95
    .line 96
    move-result v14

    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    .line 98
    .line 99
    .line 100
    move-result v18

    .line 101
    if-nez v18, :cond_8

    .line 102
    .line 103
    move/from16 v18, v7

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_8
    move/from16 v18, v8

    .line 107
    .line 108
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 109
    .line 110
    .line 111
    move-result v19

    .line 112
    if-eqz v18, :cond_9

    .line 113
    .line 114
    if-nez v19, :cond_9

    .line 115
    .line 116
    move/from16 v19, v7

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_9
    move/from16 v19, v8

    .line 120
    .line 121
    :goto_3
    new-instance v4, Landroid/content/Intent;

    .line 122
    .line 123
    const-string v8, "com.samsung.android.knox.intent.action.HARD_KEY_REPORT"

    .line 124
    .line 125
    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    const/high16 v8, 0x1000000

    .line 129
    .line 130
    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    .line 135
    .line 136
    if-eqz v16, :cond_a

    .line 137
    .line 138
    const/4 v2, 0x4

    .line 139
    goto :goto_4

    .line 140
    :cond_a
    if-eqz v17, :cond_b

    .line 141
    .line 142
    const/16 v2, 0x8

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_b
    if-eqz v19, :cond_c

    .line 146
    .line 147
    move v2, v7

    .line 148
    goto :goto_4

    .line 149
    :cond_c
    if-nez v18, :cond_e

    .line 150
    .line 151
    if-eqz p4, :cond_d

    .line 152
    .line 153
    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 154
    .line 155
    .line 156
    :cond_d
    const/4 v2, 0x2

    .line 157
    goto :goto_4

    .line 158
    :cond_e
    const/4 v2, -0x1

    .line 159
    :goto_4
    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 160
    .line 161
    .line 162
    move-object v14, v4

    .line 163
    :cond_f
    :goto_5
    move-object/from16 p1, v10

    .line 164
    .line 165
    const/4 v1, 0x0

    .line 166
    goto/16 :goto_14

    .line 167
    .line 168
    :cond_10
    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_B2B_DEDICATED_APP:Z

    .line 169
    .line 170
    const-string v8, "com.samsung.android.knox.intent.extra.KEY_REPORT_TYPE"

    .line 171
    .line 172
    if-eqz v4, :cond_1a

    .line 173
    .line 174
    const/16 v4, 0x3b7

    .line 175
    .line 176
    if-ne v11, v4, :cond_1a

    .line 177
    .line 178
    iget-object v4, v0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 179
    .line 180
    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 181
    .line 182
    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    if-nez v4, :cond_11

    .line 187
    .line 188
    const-string v0, "Can not sendBroadcast. The user setup is not complete"

    .line 189
    .line 190
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    const/4 v0, 0x0

    .line 194
    return v0

    .line 195
    :cond_11
    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_KODIAK_DEDICATED_PTT_APP:Z

    .line 196
    .line 197
    if-eqz v4, :cond_17

    .line 198
    .line 199
    invoke-virtual {v14}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 204
    .line 205
    .line 206
    move-result v5

    .line 207
    if-eqz v5, :cond_12

    .line 208
    .line 209
    goto :goto_8

    .line 210
    :cond_12
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 214
    .line 215
    .line 216
    move-result v5

    .line 217
    sparse-switch v5, :sswitch_data_0

    .line 218
    .line 219
    .line 220
    :goto_6
    const/4 v4, -0x1

    .line 221
    goto :goto_7

    .line 222
    :sswitch_0
    const-string v5, "com.verizon.pushtotalkplus"

    .line 223
    .line 224
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v4

    .line 228
    if-nez v4, :cond_13

    .line 229
    .line 230
    goto :goto_6

    .line 231
    :cond_13
    const/4 v4, 0x3

    .line 232
    goto :goto_7

    .line 233
    :sswitch_1
    const-string v5, "com.att.eptt"

    .line 234
    .line 235
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v4

    .line 239
    if-nez v4, :cond_14

    .line 240
    .line 241
    goto :goto_6

    .line 242
    :cond_14
    const/4 v4, 0x2

    .line 243
    goto :goto_7

    .line 244
    :sswitch_2
    const-string v5, "com.sprint.sdcplus"

    .line 245
    .line 246
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result v4

    .line 250
    if-nez v4, :cond_15

    .line 251
    .line 252
    goto :goto_6

    .line 253
    :cond_15
    move v4, v7

    .line 254
    goto :goto_7

    .line 255
    :sswitch_3
    const-string v5, "com.bell.ptt"

    .line 256
    .line 257
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v4

    .line 261
    if-nez v4, :cond_16

    .line 262
    .line 263
    goto :goto_6

    .line 264
    :cond_16
    const/4 v4, 0x0

    .line 265
    :goto_7
    packed-switch v4, :pswitch_data_0

    .line 266
    .line 267
    .line 268
    goto :goto_8

    .line 269
    :pswitch_0
    const-string v2, "android.intent.extra.KEY_EVENT"

    .line 270
    .line 271
    invoke-static/range {p2 .. p2}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    .line 272
    .line 273
    .line 274
    move-result-object v4

    .line 275
    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 276
    .line 277
    .line 278
    goto :goto_5

    .line 279
    :cond_17
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    .line 280
    .line 281
    .line 282
    move-result v4

    .line 283
    if-nez v4, :cond_18

    .line 284
    .line 285
    move v4, v7

    .line 286
    goto :goto_9

    .line 287
    :cond_18
    const/4 v4, 0x0

    .line 288
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 289
    .line 290
    .line 291
    move-result v5

    .line 292
    invoke-virtual {v14, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 293
    .line 294
    .line 295
    if-eqz v4, :cond_19

    .line 296
    .line 297
    move v4, v7

    .line 298
    goto :goto_a

    .line 299
    :cond_19
    const/4 v4, 0x2

    .line 300
    :goto_a
    invoke-virtual {v14, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 301
    .line 302
    .line 303
    goto/16 :goto_5

    .line 304
    .line 305
    :cond_1a
    invoke-static {v11}, Lcom/android/server/policy/KeyCustomizationManager;->isKnoxId(I)Z

    .line 306
    .line 307
    .line 308
    move-result v4

    .line 309
    if-eqz v4, :cond_f

    .line 310
    .line 311
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 312
    .line 313
    .line 314
    move-result v4

    .line 315
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    .line 316
    .line 317
    .line 318
    move-result v18

    .line 319
    if-nez v18, :cond_1b

    .line 320
    .line 321
    move/from16 v18, v7

    .line 322
    .line 323
    goto :goto_b

    .line 324
    :cond_1b
    const/16 v18, 0x0

    .line 325
    .line 326
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 327
    .line 328
    .line 329
    move-result v19

    .line 330
    if-eqz v18, :cond_1c

    .line 331
    .line 332
    if-nez v19, :cond_1c

    .line 333
    .line 334
    move/from16 v19, v7

    .line 335
    .line 336
    goto :goto_c

    .line 337
    :cond_1c
    const/16 v19, 0x0

    .line 338
    .line 339
    :goto_c
    invoke-virtual {v14}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 340
    .line 341
    .line 342
    move-result-object v7

    .line 343
    if-eqz v7, :cond_1d

    .line 344
    .line 345
    const-string v1, "getHardKeyReportState"

    .line 346
    .line 347
    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 348
    .line 349
    .line 350
    move-result v1

    .line 351
    move/from16 p1, v1

    .line 352
    .line 353
    const-string v1, "getHardKeyIntentState"

    .line 354
    .line 355
    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 356
    .line 357
    .line 358
    move-result v1

    .line 359
    move/from16 v20, v1

    .line 360
    .line 361
    move/from16 v1, p1

    .line 362
    .line 363
    move-object/from16 p1, v10

    .line 364
    .line 365
    goto :goto_d

    .line 366
    :cond_1d
    move-object/from16 p1, v10

    .line 367
    .line 368
    const/4 v1, 0x0

    .line 369
    const/16 v20, 0x0

    .line 370
    .line 371
    :goto_d
    if-eqz v1, :cond_20

    .line 372
    .line 373
    const/4 v10, 0x0

    .line 374
    invoke-static {v10, v7}, Lcom/android/server/policy/KeyCustomizationManager;->isReportedKey(ZLandroid/os/Bundle;)Z

    .line 375
    .line 376
    .line 377
    move-result v21

    .line 378
    const/4 v10, 0x1

    .line 379
    invoke-static {v10, v7}, Lcom/android/server/policy/KeyCustomizationManager;->isReportedKey(ZLandroid/os/Bundle;)Z

    .line 380
    .line 381
    .line 382
    move-result v22

    .line 383
    if-eqz v21, :cond_1e

    .line 384
    .line 385
    if-eqz v22, :cond_1e

    .line 386
    .line 387
    if-nez v19, :cond_21

    .line 388
    .line 389
    if-eqz v18, :cond_21

    .line 390
    .line 391
    goto :goto_e

    .line 392
    :cond_1e
    if-eqz v21, :cond_1f

    .line 393
    .line 394
    if-eqz v19, :cond_1f

    .line 395
    .line 396
    goto :goto_e

    .line 397
    :cond_1f
    if-eqz v22, :cond_21

    .line 398
    .line 399
    if-nez v18, :cond_21

    .line 400
    .line 401
    goto :goto_e

    .line 402
    :cond_20
    if-eqz v20, :cond_21

    .line 403
    .line 404
    const/16 v10, 0x1a

    .line 405
    .line 406
    if-eq v4, v10, :cond_21

    .line 407
    .line 408
    if-nez v18, :cond_21

    .line 409
    .line 410
    :goto_e
    const/4 v1, 0x1

    .line 411
    goto/16 :goto_13

    .line 412
    .line 413
    :cond_21
    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 414
    .line 415
    .line 416
    if-eqz v1, :cond_28

    .line 417
    .line 418
    const/4 v1, 0x0

    .line 419
    invoke-static {v1, v7}, Lcom/android/server/policy/KeyCustomizationManager;->isReportedKey(ZLandroid/os/Bundle;)Z

    .line 420
    .line 421
    .line 422
    move-result v2

    .line 423
    const/4 v1, 0x1

    .line 424
    invoke-static {v1, v7}, Lcom/android/server/policy/KeyCustomizationManager;->isReportedKey(ZLandroid/os/Bundle;)Z

    .line 425
    .line 426
    .line 427
    move-result v4

    .line 428
    if-eqz v2, :cond_24

    .line 429
    .line 430
    if-eqz v4, :cond_24

    .line 431
    .line 432
    if-eqz v19, :cond_22

    .line 433
    .line 434
    const/4 v4, 0x1

    .line 435
    goto :goto_f

    .line 436
    :cond_22
    if-nez v18, :cond_23

    .line 437
    .line 438
    const/4 v4, 0x2

    .line 439
    :goto_f
    invoke-virtual {v14, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 440
    .line 441
    .line 442
    :cond_23
    :goto_10
    const/4 v1, 0x1

    .line 443
    goto :goto_12

    .line 444
    :cond_24
    if-eqz v2, :cond_26

    .line 445
    .line 446
    if-eqz v18, :cond_25

    .line 447
    .line 448
    goto :goto_10

    .line 449
    :cond_25
    const/4 v1, 0x2

    .line 450
    invoke-virtual {v14, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 451
    .line 452
    .line 453
    goto :goto_10

    .line 454
    :cond_26
    if-eqz v4, :cond_23

    .line 455
    .line 456
    if-nez v19, :cond_27

    .line 457
    .line 458
    goto :goto_10

    .line 459
    :cond_27
    const/4 v1, 0x1

    .line 460
    invoke-virtual {v14, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 461
    .line 462
    .line 463
    goto :goto_12

    .line 464
    :cond_28
    const/4 v1, 0x1

    .line 465
    if-eqz v20, :cond_2c

    .line 466
    .line 467
    const/16 v2, 0x1a

    .line 468
    .line 469
    if-eq v4, v2, :cond_29

    .line 470
    .line 471
    goto :goto_12

    .line 472
    :cond_29
    if-eqz v16, :cond_2a

    .line 473
    .line 474
    invoke-virtual {v14, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 475
    .line 476
    .line 477
    goto :goto_12

    .line 478
    :cond_2a
    if-nez v18, :cond_2b

    .line 479
    .line 480
    const/4 v1, 0x2

    .line 481
    invoke-virtual {v14, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 482
    .line 483
    .line 484
    goto :goto_12

    .line 485
    :cond_2b
    if-eqz v19, :cond_30

    .line 486
    .line 487
    invoke-virtual {v14, v8}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    goto :goto_12

    .line 491
    :cond_2c
    const/4 v1, 0x2

    .line 492
    if-eqz v16, :cond_2d

    .line 493
    .line 494
    const/4 v4, 0x4

    .line 495
    goto :goto_11

    .line 496
    :cond_2d
    if-eqz v17, :cond_2e

    .line 497
    .line 498
    const/16 v4, 0x8

    .line 499
    .line 500
    goto :goto_11

    .line 501
    :cond_2e
    if-eqz v19, :cond_2f

    .line 502
    .line 503
    const/4 v4, 0x1

    .line 504
    goto :goto_11

    .line 505
    :cond_2f
    if-nez v18, :cond_30

    .line 506
    .line 507
    move v4, v1

    .line 508
    :goto_11
    invoke-virtual {v14, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 509
    .line 510
    .line 511
    :cond_30
    :goto_12
    const/4 v1, 0x0

    .line 512
    :goto_13
    if-nez v13, :cond_31

    .line 513
    .line 514
    if-eqz p4, :cond_31

    .line 515
    .line 516
    const/4 v2, 0x1

    .line 517
    invoke-virtual {v14, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 518
    .line 519
    .line 520
    :cond_31
    :goto_14
    if-nez v14, :cond_32

    .line 521
    .line 522
    const-string v0, "Can not sendBroadcast. intent is null. keyCode="

    .line 523
    .line 524
    const-string v1, " "

    .line 525
    .line 526
    invoke-static {v9, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    invoke-static/range {p3 .. p3}, Lcom/android/server/policy/KeyCustomizationManager;->pressToString(I)Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v1

    .line 534
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    .line 543
    .line 544
    const/4 v2, 0x0

    .line 545
    return v2

    .line 546
    :cond_32
    const/4 v2, 0x0

    .line 547
    invoke-static {v14}, Lcom/android/server/policy/KeyCustomizationManager;->isKgIntent(Landroid/content/Intent;)Z

    .line 548
    .line 549
    .line 550
    move-result v4

    .line 551
    if-eqz v4, :cond_33

    .line 552
    .line 553
    return v2

    .line 554
    :cond_33
    if-nez v1, :cond_34

    .line 555
    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    .line 557
    .line 558
    const-string/jumbo v2, "sendBroadcastAsUser intent="

    .line 559
    .line 560
    .line 561
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    const-string v2, " userId="

    .line 568
    .line 569
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v1

    .line 579
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    .line 581
    .line 582
    iget-object v0, v0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    .line 583
    .line 584
    new-instance v1, Landroid/os/UserHandle;

    .line 585
    .line 586
    invoke-direct {v1, v12}, Landroid/os/UserHandle;-><init>(I)V

    .line 587
    .line 588
    .line 589
    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 590
    .line 591
    .line 592
    :cond_34
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 593
    .line 594
    .line 595
    move-result v0

    .line 596
    invoke-static {v11}, Lcom/android/server/policy/KeyCustomizationManager;->isKnoxId(I)Z

    .line 597
    .line 598
    .line 599
    move-result v1

    .line 600
    const/16 v2, 0x4f

    .line 601
    .line 602
    const/16 v4, 0x437

    .line 603
    .line 604
    const/16 v5, 0x3f7

    .line 605
    .line 606
    if-nez v1, :cond_35

    .line 607
    .line 608
    goto :goto_19

    .line 609
    :cond_35
    if-eq v5, v9, :cond_36

    .line 610
    .line 611
    if-eq v4, v9, :cond_36

    .line 612
    .line 613
    if-eq v2, v9, :cond_36

    .line 614
    .line 615
    goto :goto_19

    .line 616
    :cond_36
    if-nez v13, :cond_38

    .line 617
    .line 618
    invoke-virtual {v14}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 619
    .line 620
    .line 621
    move-result-object v1

    .line 622
    const/4 v6, 0x0

    .line 623
    invoke-static {v6, v1}, Lcom/android/server/policy/KeyCustomizationManager;->isReportedKey(ZLandroid/os/Bundle;)Z

    .line 624
    .line 625
    .line 626
    move-result v1

    .line 627
    if-eqz v1, :cond_38

    .line 628
    .line 629
    invoke-virtual {v14}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 630
    .line 631
    .line 632
    move-result-object v1

    .line 633
    if-nez v1, :cond_37

    .line 634
    .line 635
    const/4 v1, 0x0

    .line 636
    goto :goto_15

    .line 637
    :cond_37
    const-string v6, "blockedStateOnKeyedUp"

    .line 638
    .line 639
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 640
    .line 641
    .line 642
    move-result v1

    .line 643
    :goto_15
    if-eqz v1, :cond_38

    .line 644
    .line 645
    :goto_16
    const/4 v0, -0x1

    .line 646
    goto :goto_18

    .line 647
    :cond_38
    if-eqz v13, :cond_3a

    .line 648
    .line 649
    if-nez v0, :cond_3a

    .line 650
    .line 651
    invoke-virtual {v14}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 652
    .line 653
    .line 654
    move-result-object v0

    .line 655
    const/4 v1, 0x1

    .line 656
    invoke-static {v1, v0}, Lcom/android/server/policy/KeyCustomizationManager;->isReportedKey(ZLandroid/os/Bundle;)Z

    .line 657
    .line 658
    .line 659
    move-result v0

    .line 660
    if-eqz v0, :cond_3a

    .line 661
    .line 662
    invoke-virtual {v14}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 663
    .line 664
    .line 665
    move-result-object v0

    .line 666
    if-nez v0, :cond_39

    .line 667
    .line 668
    const/4 v0, 0x0

    .line 669
    goto :goto_17

    .line 670
    :cond_39
    const-string v1, "blockedStateOnKeyedDown"

    .line 671
    .line 672
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 673
    .line 674
    .line 675
    move-result v0

    .line 676
    :goto_17
    if-eqz v0, :cond_3a

    .line 677
    .line 678
    goto :goto_16

    .line 679
    :goto_18
    return v0

    .line 680
    :cond_3a
    :goto_19
    invoke-static {v11}, Lcom/android/server/policy/KeyCustomizationManager;->isKnoxId(I)Z

    .line 681
    .line 682
    .line 683
    move-result v0

    .line 684
    if-eqz v0, :cond_3d

    .line 685
    .line 686
    if-eqz v15, :cond_3d

    .line 687
    .line 688
    const/16 v0, 0xbb

    .line 689
    .line 690
    if-eq v9, v0, :cond_3c

    .line 691
    .line 692
    const/4 v0, 0x3

    .line 693
    if-ne v9, v0, :cond_3b

    .line 694
    .line 695
    goto :goto_1a

    .line 696
    :cond_3b
    move-object/from16 v10, p1

    .line 697
    .line 698
    const/4 v0, -0x1

    .line 699
    goto :goto_1b

    .line 700
    :cond_3c
    :goto_1a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 701
    .line 702
    const-string v1, "Long press of key("

    .line 703
    .line 704
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 705
    .line 706
    .line 707
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 708
    .line 709
    .line 710
    const-string v1, ") action should be blocked by knox policy"

    .line 711
    .line 712
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    .line 714
    .line 715
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 716
    .line 717
    .line 718
    move-result-object v0

    .line 719
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    .line 721
    .line 722
    const/4 v0, -0x1

    .line 723
    return v0

    .line 724
    :cond_3d
    const/4 v0, -0x1

    .line 725
    move-object/from16 v10, p1

    .line 726
    .line 727
    :goto_1b
    iget v1, v10, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->dispatching:I

    .line 728
    .line 729
    if-ne v1, v0, :cond_3e

    .line 730
    .line 731
    const/4 v0, 0x4

    .line 732
    if-eq v9, v0, :cond_3f

    .line 733
    .line 734
    if-eq v9, v2, :cond_3f

    .line 735
    .line 736
    if-eq v9, v5, :cond_3f

    .line 737
    .line 738
    if-eq v9, v4, :cond_3f

    .line 739
    .line 740
    const/16 v0, 0x18

    .line 741
    .line 742
    if-eq v9, v0, :cond_3f

    .line 743
    .line 744
    const/16 v0, 0x19

    .line 745
    .line 746
    if-eq v9, v0, :cond_3f

    .line 747
    .line 748
    :cond_3e
    const/4 v0, 0x0

    .line 749
    goto :goto_1c

    .line 750
    :cond_3f
    return v1

    .line 751
    :goto_1c
    return v0

    .line 752
    nop

    .line 753
    :sswitch_data_0
    .sparse-switch
        -0x6e35f6ae -> :sswitch_3
        -0x3dc882fb -> :sswitch_2
        0x4dbc6965 -> :sswitch_1
        0x7903cfc3 -> :sswitch_0
    .end sparse-switch

    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final startActivity(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V
    .locals 8

    .line 1
    iget-object v2, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    .line 2
    .line 3
    iget-object v6, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 4
    .line 5
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerExt;->getFillInIntent()Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object v7

    .line 12
    const-string v0, "KeyCustomizationManager"

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    const-string p0, "Can not startActivity. intent is null."

    .line 17
    .line 18
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget p1, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->userId:I

    .line 23
    .line 24
    const-string/jumbo v1, "startActivity. userId="

    .line 25
    .line 26
    .line 27
    const-string v3, " Callers="

    .line 28
    .line 29
    invoke-static {p1, v1, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/4 v3, 0x3

    .line 34
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    iget-object v0, v6, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowing()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    new-instance v0, Landroid/os/UserHandle;

    .line 59
    .line 60
    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    new-instance v5, Landroid/os/UserHandle;

    .line 68
    .line 69
    invoke-direct {v5, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 70
    .line 71
    .line 72
    iget-object v0, v6, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 73
    .line 74
    const/4 v4, 0x0

    .line 75
    const/4 v1, 0x0

    .line 76
    const/high16 v3, 0xc000000

    .line 77
    .line 78
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {v6, p0, v7}, Lcom/android/server/policy/PhoneWindowManagerExt;->setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 83
    .line 84
    .line 85
    :goto_0
    return-void
.end method

.method public final startMCPTTServiceIfNeeded(Landroid/view/KeyEvent;I)Z
    .locals 5

    .line 1
    invoke-static {p2}, Lcom/android/server/policy/KeyCustomizationManager;->isXCoverOrTopKey(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 10
    .line 11
    const/4 v2, 0x3

    .line 12
    invoke-virtual {v0, v2, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return v1

    .line 19
    :cond_1
    iget-object v3, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    .line 20
    .line 21
    if-eqz v3, :cond_3

    .line 22
    .line 23
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    if-nez v4, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const-string v4, "com.att.firstnet.grey"

    .line 39
    .line 40
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_3

    .line 45
    .line 46
    invoke-virtual {p0, v0, v2, p2, p1}, Lcom/android/server/policy/KeyCustomizationManager;->startService(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IILandroid/view/KeyEvent;)V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x1

    .line 50
    return p0

    .line 51
    :cond_3
    :goto_0
    return v1
.end method

.method public final startService(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IILandroid/view/KeyEvent;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    .line 2
    .line 3
    iget v1, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    .line 4
    .line 5
    const-string v2, "KeyCustomizationManager"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p0, "Can not startService. intent is null."

    .line 10
    .line 11
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const/4 v4, 0x0

    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move-object v3, v4

    .line 32
    :goto_0
    sget-boolean v5, Lcom/samsung/android/rune/InputRune;->PWM_B2B_DEDICATED_APP:Z

    .line 33
    .line 34
    if-eqz v5, :cond_2

    .line 35
    .line 36
    const/16 v5, 0x3b7

    .line 37
    .line 38
    if-ne v1, v5, :cond_2

    .line 39
    .line 40
    const-string v5, "com.att.firstnet.grey"

    .line 41
    .line 42
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    if-eqz p4, :cond_2

    .line 49
    .line 50
    const-string p2, "android.intent.extra.KEY_EVENT"

    .line 51
    .line 52
    invoke-static {p4}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    const-string p4, "extraKeyCode"

    .line 61
    .line 62
    invoke-virtual {v0, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    and-int/lit8 p3, p2, 0x3

    .line 66
    .line 67
    if-eqz p3, :cond_3

    .line 68
    .line 69
    const-string/jumbo v4, "press"

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    and-int/lit8 p3, p2, 0x4

    .line 74
    .line 75
    if-eqz p3, :cond_4

    .line 76
    .line 77
    const-string v4, "long"

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_4
    and-int/lit8 p3, p2, 0x8

    .line 81
    .line 82
    if-eqz p3, :cond_5

    .line 83
    .line 84
    const-string v4, "double"

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_5
    and-int/lit8 p3, p2, 0x10

    .line 88
    .line 89
    if-eqz p3, :cond_6

    .line 90
    .line 91
    const-string/jumbo v4, "triple"

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_6
    and-int/lit8 p3, p2, 0x20

    .line 96
    .line 97
    if-eqz p3, :cond_7

    .line 98
    .line 99
    const-string/jumbo v4, "quadruple"

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_7
    and-int/lit8 p2, p2, 0x40

    .line 104
    .line 105
    if-eqz p2, :cond_8

    .line 106
    .line 107
    const-string/jumbo v4, "quintuple"

    .line 108
    .line 109
    .line 110
    :cond_8
    :goto_1
    const-string p2, "extraKeyAction"

    .line 111
    .line 112
    invoke-virtual {v0, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    .line 114
    .line 115
    :goto_2
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    if-nez p2, :cond_9

    .line 120
    .line 121
    const-string p2, "android.intent.action.MAIN"

    .line 122
    .line 123
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    .line 125
    .line 126
    const-string/jumbo p2, "startService add action main"

    .line 127
    .line 128
    .line 129
    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    :cond_9
    iget p2, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->userId:I

    .line 133
    .line 134
    const-string/jumbo p3, "startService. userId="

    .line 135
    .line 136
    .line 137
    const-string p4, " ownerPackage="

    .line 138
    .line 139
    invoke-static {p2, p3, p4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    move-result-object p3

    .line 143
    iget-object p1, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string p1, " Callers="

    .line 149
    .line 150
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const/4 p1, 0x3

    .line 154
    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    const/16 p1, 0x7d3

    .line 169
    .line 170
    if-ne v1, p1, :cond_a

    .line 171
    .line 172
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    .line 173
    .line 174
    new-instance p1, Landroid/os/UserHandle;

    .line 175
    .line 176
    invoke-direct {p1, p2}, Landroid/os/UserHandle;-><init>(I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 180
    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_a
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    .line 184
    .line 185
    new-instance p1, Landroid/os/UserHandle;

    .line 186
    .line 187
    invoke-direct {p1, p2}, Landroid/os/UserHandle;-><init>(I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 191
    .line 192
    .line 193
    :goto_3
    return-void
.end method

.method public final updateLongPressTimeoutIfNeeded(IIZ)V
    .locals 4

    .line 1
    and-int/lit8 v0, p1, 0x4

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    move-wide v2, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-wide v2, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->longPressTimeout:J

    .line 19
    .line 20
    :goto_0
    if-eqz p3, :cond_2

    .line 21
    .line 22
    cmp-long p1, v2, v0

    .line 23
    .line 24
    if-nez p1, :cond_2

    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mCustomRules:Landroid/util/SparseArray;

    .line 34
    .line 35
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 40
    .line 41
    if-nez p0, :cond_3

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getLongPressTimeoutMs()J

    .line 45
    .line 46
    .line 47
    :goto_1
    return-void
.end method

.method public final updateMultiPressTimeoutIfNeeded(IIZJ)V
    .locals 4

    .line 1
    and-int/lit8 v0, p1, 0x3

    .line 2
    .line 3
    if-nez v0, :cond_9

    .line 4
    .line 5
    and-int/lit8 p1, p1, 0x4

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    cmp-long p1, p4, v0

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    if-nez p3, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/android/server/policy/SingleKeyGestureDetector;->mCustomRules:Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 32
    .line 33
    if-nez p1, :cond_2

    .line 34
    .line 35
    move-wide v2, v0

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    iget-wide v2, p1, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->extensionMultiPressTimeout:J

    .line 38
    .line 39
    cmp-long p1, v2, v0

    .line 40
    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    sget-wide v2, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultMultiPressTimeout:J

    .line 45
    .line 46
    :goto_0
    if-nez p3, :cond_4

    .line 47
    .line 48
    cmp-long p1, v2, v0

    .line 49
    .line 50
    if-eqz p1, :cond_4

    .line 51
    .line 52
    cmp-long p1, p4, v2

    .line 53
    .line 54
    if-gez p1, :cond_4

    .line 55
    .line 56
    return-void

    .line 57
    :cond_4
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mCustomRules:Landroid/util/SparseArray;

    .line 62
    .line 63
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    check-cast p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 68
    .line 69
    if-nez p0, :cond_5

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_5
    iget-wide p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->extensionMultiPressTimeout:J

    .line 73
    .line 74
    cmp-long p3, p1, v0

    .line 75
    .line 76
    if-eqz p3, :cond_6

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_6
    sget-wide p1, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultMultiPressTimeout:J

    .line 80
    .line 81
    :goto_1
    cmp-long p1, p4, p1

    .line 82
    .line 83
    if-nez p1, :cond_7

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_7
    sget-wide p1, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultMultiPressTimeout:J

    .line 87
    .line 88
    cmp-long p1, p4, p1

    .line 89
    .line 90
    if-nez p1, :cond_8

    .line 91
    .line 92
    move-wide p4, v0

    .line 93
    :cond_8
    iput-wide p4, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->extensionMultiPressTimeout:J

    .line 94
    .line 95
    :cond_9
    :goto_2
    return-void
.end method

.method public final updatePowerBehavior(I)V
    .locals 7

    .line 1
    and-int/lit8 v0, p1, 0x4

    .line 2
    .line 3
    const/16 v1, 0x66

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x1

    .line 7
    const/16 v4, 0x1a

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 10
    .line 11
    if-eqz v0, :cond_7

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 14
    .line 15
    iget-object v0, p1, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 16
    .line 17
    const/4 v5, 0x4

    .line 18
    invoke-virtual {v0, v5, v4}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string/jumbo v5, "power_button_long_press"

    .line 23
    .line 24
    .line 25
    const-string v6, "PhoneWindowManagerExt"

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1, v2, v4}, Lcom/android/server/policy/KeyCustomizationManager;->getLastId(II)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/16 v0, 0x3b7

    .line 34
    .line 35
    if-ne p1, v0, :cond_0

    .line 36
    .line 37
    const-string/jumbo p1, "updated long press power behavior by b2b dedicated app"

    .line 38
    .line 39
    .line 40
    invoke-static {v6, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const/4 p1, 0x0

    .line 50
    invoke-static {p0, v5, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 51
    .line 52
    .line 53
    goto/16 :goto_1

    .line 54
    .line 55
    :cond_0
    const-string p1, "Side key long press info was wrong."

    .line 56
    .line 57
    invoke-static {v6, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-static {p0, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 67
    .line 68
    .line 69
    goto/16 :goto_1

    .line 70
    .line 71
    :cond_1
    iget-object p1, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    .line 72
    .line 73
    if-nez p1, :cond_2

    .line 74
    .line 75
    const-string p1, "Side key long press intent info was wrong."

    .line 76
    .line 77
    invoke-static {v6, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-static {p0, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 87
    .line 88
    .line 89
    goto/16 :goto_1

    .line 90
    .line 91
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    if-eqz p1, :cond_3

    .line 96
    .line 97
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    goto :goto_0

    .line 102
    :cond_3
    const/4 p1, 0x0

    .line 103
    :goto_0
    const-string/jumbo v0, "updateLongPressPowerBehavior componentName:"

    .line 104
    .line 105
    .line 106
    invoke-static {v0, p1, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_DIGITAL_ASSISTANT:Z

    .line 110
    .line 111
    if-eqz v0, :cond_4

    .line 112
    .line 113
    const-string v0, "aiAgentApp/aiAgentApp"

    .line 114
    .line 115
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_4

    .line 120
    .line 121
    const-string/jumbo p1, "updated long press power behavior as digital assistant"

    .line 122
    .line 123
    .line 124
    invoke-static {v6, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 128
    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    const/16 p1, 0x67

    .line 134
    .line 135
    invoke-static {p0, v5, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 136
    .line 137
    .line 138
    goto/16 :goto_1

    .line 139
    .line 140
    :cond_4
    const-string/jumbo v0, "wakeBixby/wakeBixby"

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_5

    .line 148
    .line 149
    const-string/jumbo p1, "updated long press power behavior as wake bixby"

    .line 150
    .line 151
    .line 152
    invoke-static {v6, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 156
    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    const/16 p1, 0x65

    .line 162
    .line 163
    invoke-static {p0, v5, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_5
    const-string v0, "globalAction/globalAction"

    .line 168
    .line 169
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    if-eqz p1, :cond_6

    .line 174
    .line 175
    const-string/jumbo p1, "updated long press power behavior as global action"

    .line 176
    .line 177
    .line 178
    invoke-static {v6, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 182
    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    invoke-static {p0, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 188
    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_6
    const-string/jumbo p1, "updated long press power behavior as keyCustomizationInfo"

    .line 192
    .line 193
    .line 194
    invoke-static {v6, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 198
    .line 199
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    invoke-static {p0, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 204
    .line 205
    .line 206
    goto :goto_1

    .line 207
    :cond_7
    and-int/lit8 v0, p1, 0x8

    .line 208
    .line 209
    if-eqz v0, :cond_8

    .line 210
    .line 211
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateDoublePressPowerBehavior()V

    .line 212
    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_8
    and-int/lit8 v0, p1, 0x10

    .line 216
    .line 217
    const/16 v5, 0x6a

    .line 218
    .line 219
    const/4 v6, 0x2

    .line 220
    if-eqz v0, :cond_b

    .line 221
    .line 222
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    .line 224
    .line 225
    sget-boolean p1, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_TRIPLE_PRESS_PANIC_CALL:Z

    .line 226
    .line 227
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 228
    .line 229
    if-eqz p1, :cond_9

    .line 230
    .line 231
    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    .line 232
    .line 233
    goto :goto_1

    .line 234
    :cond_9
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 235
    .line 236
    const/16 p1, 0x10

    .line 237
    .line 238
    invoke-virtual {p0, p1, v4}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    .line 239
    .line 240
    .line 241
    move-result p0

    .line 242
    if-eq p0, v3, :cond_a

    .line 243
    .line 244
    if-eq p0, v2, :cond_a

    .line 245
    .line 246
    if-ne p0, v6, :cond_d

    .line 247
    .line 248
    :cond_a
    iput v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    .line 249
    .line 250
    goto :goto_1

    .line 251
    :cond_b
    const/16 v0, 0x20

    .line 252
    .line 253
    and-int/2addr p1, v0

    .line 254
    if-eqz p1, :cond_d

    .line 255
    .line 256
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 257
    .line 258
    invoke-virtual {p1, v0, v4}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    .line 259
    .line 260
    .line 261
    move-result p1

    .line 262
    if-eq p1, v3, :cond_c

    .line 263
    .line 264
    if-eq p1, v2, :cond_c

    .line 265
    .line 266
    if-ne p1, v6, :cond_d

    .line 267
    .line 268
    :cond_c
    iput v5, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuadruplePressOnPowerBehavior:I

    .line 269
    .line 270
    :cond_d
    :goto_1
    return-void
.end method
