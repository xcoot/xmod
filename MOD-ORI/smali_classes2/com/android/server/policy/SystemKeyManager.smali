.class public final Lcom/android/server/policy/SystemKeyManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final SUPPORT_KEYCODE:[I


# instance fields
.field public mFocusedWindow:Ljava/lang/String;

.field public mIsActivatedHomeKey:Z

.field public mIsActivatedRecentKey:Z

.field public mMetaKeyPass:Z

.field public mMetaKeyRequestedComponents:Ljava/util/HashSet;

.field public mPolicy:Lcom/android/server/policy/PhoneWindowManager;

.field public mSystemKeyInfoMap:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/server/policy/SystemKeyManager;->SUPPORT_KEYCODE:[I

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 4
        0x1a
        0x3
        0xbb
        0x6
        0x428
        0xe0
        0x450
    .end array-data
.end method

.method public static checkValidRequestedDefaultInfo(IILandroid/content/ComponentName;)Z
    .locals 2

    .line 1
    if-eqz p2, :cond_2

    .line 2
    .line 3
    const/4 p2, 0x3

    .line 4
    if-eq p0, p2, :cond_1

    .line 5
    .line 6
    const/4 p2, 0x6

    .line 7
    if-eq p0, p2, :cond_1

    .line 8
    .line 9
    const/16 p2, 0x1a

    .line 10
    .line 11
    if-eq p0, p2, :cond_1

    .line 12
    .line 13
    const/16 p2, 0xbb

    .line 14
    .line 15
    if-eq p0, p2, :cond_1

    .line 16
    .line 17
    const/16 p2, 0xe0

    .line 18
    .line 19
    if-eq p0, p2, :cond_1

    .line 20
    .line 21
    const/16 p2, 0x428

    .line 22
    .line 23
    if-eq p0, p2, :cond_1

    .line 24
    .line 25
    const/16 p2, 0x450

    .line 26
    .line 27
    if-eq p0, p2, :cond_1

    .line 28
    .line 29
    const/4 p2, -0x1

    .line 30
    const-string v0, ") does not supported."

    .line 31
    .line 32
    const-string/jumbo v1, "requested keyCode was wrong. The keyCode("

    .line 33
    .line 34
    .line 35
    if-ne p1, p2, :cond_0

    .line 36
    .line 37
    const-string p1, "SystemKeyManager"

    .line 38
    .line 39
    invoke-static {p0, v1, v0, p1}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    return p0

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    invoke-static {p0, v1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_1
    const/4 p0, 0x1

    .line 55
    return p0

    .line 56
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 57
    .line 58
    const-string/jumbo p1, "requested component name is null."

    .line 59
    .line 60
    .line 61
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p0
.end method

.method public static keyPressToString(I)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    and-int/lit8 v1, p0, 0x3

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v1, "KEY_PRESS_SINGLE"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    :cond_0
    and-int/lit8 v1, p0, 0x4

    .line 16
    .line 17
    const-string v2, " | "

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    :cond_1
    const-string v1, "KEY_PRESS_LONG"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    :cond_2
    and-int/lit8 p0, p0, 0x8

    .line 36
    .line 37
    if-eqz p0, :cond_4

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_3

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    :cond_3
    const-string p0, "KEY_PRESS_DOUBLE"

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-nez p0, :cond_5

    .line 58
    .line 59
    const-string p0, "0"

    .line 60
    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    return-object p0
.end method


# virtual methods
.method public final findFocusedWindow(I)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x1a

    .line 6
    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    const/16 v0, 0xbb

    .line 10
    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    .line 13
    const/16 v0, 0xe0

    .line 14
    .line 15
    if-eq p1, v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/SystemKeyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 21
    .line 22
    iget-object v0, p1, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicyExt;->mFakeFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object p1, p1, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    iget v2, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .line 34
    .line 35
    iget p1, p1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .line 36
    .line 37
    if-le v2, p1, :cond_3

    .line 38
    .line 39
    :cond_2
    iget-object p1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    :cond_3
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_4

    .line 54
    .line 55
    return-object v1

    .line 56
    :cond_4
    iget-object p0, p0, Lcom/android/server/policy/SystemKeyManager;->mFocusedWindow:Ljava/lang/String;

    .line 57
    .line 58
    return-object p0
.end method

.method public final hasSystemKeyInfo(II)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 2
    .line 3
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "hasSystemKeyInfo() is called keyCode="

    .line 8
    .line 9
    const-string v1, " press="

    .line 10
    .line 11
    invoke-static {p1, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {p2}, Lcom/android/server/policy/SystemKeyManager;->keyPressToString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, " focusedWindow="

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/policy/SystemKeyManager;->mFocusedWindow:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "SystemKeyManager"

    .line 37
    .line 38
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :cond_0
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfoWithFocusedWindow(IIZ)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    return p0
.end method

.method public final hasSystemKeyInfoWithFocusedWindow(IIZ)Z
    .locals 7

    .line 1
    const-string/jumbo v0, "requested systemKeyInfo size="

    .line 2
    .line 3
    .line 4
    const-string v1, "hasPress() : keyCode="

    .line 5
    .line 6
    sget-object v2, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 7
    .line 8
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    const-string v2, "SystemKeyManager"

    .line 13
    .line 14
    const-string v3, "hasSystemKeyInfoWithFocusedWindow() is called keyCode="

    .line 15
    .line 16
    const-string v4, " press="

    .line 17
    .line 18
    invoke-static {p1, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-static {p2}, Lcom/android/server/policy/SystemKeyManager;->keyPressToString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :cond_0
    monitor-enter p0

    .line 37
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/SystemKeyManager;->mSystemKeyInfoMap:Landroid/util/SparseArray;

    .line 38
    .line 39
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Ljava/util/HashMap;

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    if-eqz v2, :cond_8

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-nez v4, :cond_1

    .line 53
    .line 54
    goto/16 :goto_2

    .line 55
    .line 56
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/policy/SystemKeyManager;->findFocusedWindow(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-eqz v5, :cond_2

    .line 65
    .line 66
    const-string p1, "SystemKeyManager"

    .line 67
    .line 68
    const-string p2, "isSystemKeyEventRequested() : focusedWindow is empty."

    .line 69
    .line 70
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    monitor-exit p0

    .line 74
    return v3

    .line 75
    :catchall_0
    move-exception p1

    .line 76
    goto :goto_3

    .line 77
    :cond_2
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    check-cast v5, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;

    .line 82
    .line 83
    if-nez v5, :cond_3

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    iget-boolean v6, v5, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;->keyPressOld:Z

    .line 87
    .line 88
    if-eqz v6, :cond_4

    .line 89
    .line 90
    iget p3, v5, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;->keyCode:I

    .line 91
    .line 92
    const/16 v5, 0x1a

    .line 93
    .line 94
    if-ne p3, v5, :cond_6

    .line 95
    .line 96
    and-int/lit8 p2, p2, 0x4

    .line 97
    .line 98
    if-eqz p2, :cond_6

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_4
    if-eqz p3, :cond_5

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_5
    iget p3, v5, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;->press:I

    .line 105
    .line 106
    and-int/2addr p2, p3

    .line 107
    if-eqz p2, :cond_7

    .line 108
    .line 109
    :cond_6
    :goto_0
    const-string p2, "SystemKeyManager"

    .line 110
    .line 111
    new-instance p3, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string p1, " focusedWindow="

    .line 120
    .line 121
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    monitor-exit p0

    .line 135
    const/4 p0, 0x1

    .line 136
    return p0

    .line 137
    :cond_7
    :goto_1
    const-string p1, "SystemKeyManager"

    .line 138
    .line 139
    new-instance p2, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 145
    .line 146
    .line 147
    move-result p3

    .line 148
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string p3, " focusedWindow="

    .line 152
    .line 153
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    monitor-exit p0

    .line 167
    return v3

    .line 168
    :cond_8
    :goto_2
    monitor-exit p0

    .line 169
    return v3

    .line 170
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    throw p1
.end method

.method public final isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 2
    .line 3
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v1, "SystemKeyManager"

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v3, "isSystemKeyEventRequested() is called keyCode="

    .line 12
    .line 13
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v3, " componentName="

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_0
    const/4 v1, 0x0

    .line 35
    if-nez p2, :cond_1

    .line 36
    .line 37
    return v1

    .line 38
    :cond_1
    monitor-enter p0

    .line 39
    :try_start_0
    iget-object p2, p0, Lcom/android/server/policy/SystemKeyManager;->mSystemKeyInfoMap:Landroid/util/SparseArray;

    .line 40
    .line 41
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    check-cast p2, Ljava/util/HashMap;

    .line 46
    .line 47
    if-nez p2, :cond_2

    .line 48
    .line 49
    monitor-exit p0

    .line 50
    return v1

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/policy/SystemKeyManager;->findFocusedWindow(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_4

    .line 62
    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    const-string p1, "SystemKeyManager"

    .line 66
    .line 67
    const-string p2, "isSystemKeyEventRequested() : focusedWindow is empty."

    .line 68
    .line 69
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    :cond_3
    monitor-exit p0

    .line 73
    return v1

    .line 74
    :cond_4
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;

    .line 79
    .line 80
    if-nez p1, :cond_5

    .line 81
    .line 82
    monitor-exit p0

    .line 83
    return v1

    .line 84
    :cond_5
    iget-boolean p1, p1, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;->keyPressOld:Z

    .line 85
    .line 86
    if-eqz p1, :cond_6

    .line 87
    .line 88
    monitor-exit p0

    .line 89
    const/4 p0, 0x1

    .line 90
    return p0

    .line 91
    :cond_6
    monitor-exit p0

    .line 92
    return v1

    .line 93
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    throw p1
.end method

.method public final notifyRequestedSystemKey()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/SystemKeyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/16 v1, 0xbb

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfoWithFocusedWindow(IIZ)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget-boolean v4, p0, Lcom/android/server/policy/SystemKeyManager;->mIsActivatedRecentKey:Z

    .line 19
    .line 20
    if-eq v4, v1, :cond_1

    .line 21
    .line 22
    iput-boolean v1, p0, Lcom/android/server/policy/SystemKeyManager;->mIsActivatedRecentKey:Z

    .line 23
    .line 24
    move v1, v3

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move v1, v2

    .line 27
    :goto_0
    const/4 v4, 0x3

    .line 28
    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfoWithFocusedWindow(IIZ)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    iget-boolean v4, p0, Lcom/android/server/policy/SystemKeyManager;->mIsActivatedHomeKey:Z

    .line 33
    .line 34
    if-eq v4, v2, :cond_2

    .line 35
    .line 36
    iput-boolean v2, p0, Lcom/android/server/policy/SystemKeyManager;->mIsActivatedHomeKey:Z

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    move v3, v1

    .line 40
    :goto_1
    if-nez v3, :cond_3

    .line 41
    .line 42
    return-void

    .line 43
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/policy/SystemKeyManager;->mIsActivatedRecentKey:Z

    .line 44
    .line 45
    iget-boolean p0, p0, Lcom/android/server/policy/SystemKeyManager;->mIsActivatedHomeKey:Z

    .line 46
    .line 47
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 48
    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string/jumbo v3, "notifyRequestedSystemKey recent="

    .line 52
    .line 53
    .line 54
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v3, " home="

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    const-string v3, "StatusBarManagerService"

    .line 73
    .line 74
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    iget-object v2, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 78
    .line 79
    iget-object v2, v2, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 80
    .line 81
    if-nez v2, :cond_4

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_4
    :try_start_0
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 85
    .line 86
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 87
    .line 88
    invoke-interface {v0, v1, p0}, Lcom/android/internal/statusbar/IStatusBar;->notifyRequestedSystemKey(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    :catch_0
    :goto_2
    return-void
.end method

.method public final updateFocusedWindow(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 2
    .line 3
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    .line 4
    .line 5
    const-string v0, "SystemKeyManager"

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "updateFocusedWindow() is called, "

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    monitor-enter p0

    .line 26
    :try_start_0
    iput-object p1, p0, Lcom/android/server/policy/SystemKeyManager;->mFocusedWindow:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/policy/SystemKeyManager;->mMetaKeyRequestedComponents:Ljava/util/HashSet;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    iput-boolean p1, p0, Lcom/android/server/policy/SystemKeyManager;->mMetaKeyPass:Z

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/policy/SystemKeyManager;->mMetaKeyPass:Z

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lcom/android/server/policy/SystemKeyManager;->mMetaKeyPass:Z

    .line 46
    .line 47
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/policy/SystemKeyManager;->mSystemKeyInfoMap:Landroid/util/SparseArray;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/android/server/policy/SystemKeyManager;->notifyRequestedSystemKey()V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    :goto_1
    monitor-exit p0

    .line 62
    return-void

    .line 63
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    throw p1
.end method
