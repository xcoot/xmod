.class public final Lcom/android/server/clipboard/ClipboardService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEFAULT_CLIPBOARD_TIMEOUT_MILLIS:J = 0x36ee80L


# instance fields
.field public mAllowVirtualDeviceSilos:Z

.field public final mAmInternal:Landroid/app/ActivityManagerInternal;

.field public final mAppOps:Landroid/app/AppOpsManager;

.field public final mAutofillInternal:Landroid/view/autofill/AutofillManagerInternal;

.field public final mClipboardMonitor:Ljava/util/function/Consumer;

.field public final mClipboards:Landroid/util/SparseArrayMap;

.field public final mContentCaptureInternal:Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;

.field public mMaxClassificationLength:I

.field public final mPermissionOwner:Landroid/os/IBinder;

.field public mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field public final mPm:Landroid/content/pm/PackageManager;

.field public mSemClipboardService:Lcom/android/server/semclipboard/SemClipboardService;

.field public mShowAccessNotifications:Z

.field public final mUgm:Landroid/app/IUriGrantsManager;

.field public final mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

.field public final mUm:Landroid/os/IUserManager;

.field public final mVdm:Landroid/companion/virtual/VirtualDeviceManager;

.field public final mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

.field public mVirtualDeviceListener:Lcom/android/server/clipboard/ClipboardService$2;

.field public mVirtualDeviceRemovedReceiver:Lcom/android/server/clipboard/ClipboardService$1;

.field public final mWm:Lcom/android/server/wm/WindowManagerInternal;

.field public final mWorkerHandler:Landroid/os/Handler;


# direct methods
.method public static -$$Nest$maddActiveOwnerLocked(Lcom/android/server/clipboard/ClipboardService;IILjava/lang/String;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const-string v0, "Calling uid "

    .line 6
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    .line 8
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    move-object v2, v1

    .line 13
    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 15
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 18
    move-result v4

    .line 19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 22
    move-result-wide v8

    .line 23
    const-wide/16 v5, 0x0

    .line 25
    move v3, p1

    .line 26
    move-object v7, p3

    .line 27
    :try_start_0
    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManagerInternal;->isSameApp(IIJLjava/lang/String;)Z

    .line 30
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    if-eqz v1, :cond_6

    .line 33
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 39
    move-result v0

    .line 40
    invoke-virtual {p0, v0, p2}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    .line 43
    move-result-object p2

    .line 44
    if-eqz p2, :cond_5

    .line 46
    iget-object v0, p2, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    .line 48
    if-eqz v0, :cond_5

    .line 50
    iget-object v0, p2, Lcom/android/server/clipboard/ClipboardService$Clipboard;->activePermissionOwners:Ljava/util/HashSet;

    .line 52
    invoke-virtual {v0, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_5

    .line 58
    iget-object v0, p2, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    .line 60
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    .line 63
    move-result v0

    .line 64
    const/4 v1, 0x0

    .line 65
    :goto_0
    if-ge v1, v0, :cond_4

    .line 67
    iget-object v2, p2, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    .line 69
    invoke-virtual {v2, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 72
    move-result-object v2

    .line 73
    iget v3, p2, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipUid:I

    .line 75
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 78
    move-result v4

    .line 79
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 82
    move-result-object v5

    .line 83
    if-eqz v5, :cond_0

    .line 85
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 88
    move-result-object v5

    .line 89
    invoke-virtual {p0, v5, v3, p3, v4}, Lcom/android/server/clipboard/ClipboardService;->grantUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V

    .line 92
    :cond_0
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    .line 95
    move-result-object v2

    .line 96
    if-eqz v2, :cond_1

    .line 98
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 101
    move-result-object v5

    .line 102
    if-eqz v5, :cond_1

    .line 104
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {p0, v2, v3, p3, v4}, Lcom/android/server/clipboard/ClipboardService;->grantUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V

    .line 111
    :cond_1
    const-string/jumbo v2, "com.samsung.android.honeyboard"

    .line 114
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_3

    .line 120
    const-string v2, "ClipboardService"

    .line 122
    const-string v3, "adding mcfds"

    .line 124
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v2, p2, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    .line 129
    invoke-virtual {v2, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 132
    move-result-object v2

    .line 133
    iget v3, p2, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipUid:I

    .line 135
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 138
    move-result v4

    .line 139
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 142
    move-result-object v5

    .line 143
    const-string/jumbo v6, "com.samsung.android.mcfds"

    .line 146
    if-eqz v5, :cond_2

    .line 148
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 151
    move-result-object v5

    .line 152
    invoke-virtual {p0, v5, v3, v6, v4}, Lcom/android/server/clipboard/ClipboardService;->grantUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V

    .line 155
    :cond_2
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    .line 158
    move-result-object v2

    .line 159
    if-eqz v2, :cond_3

    .line 161
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 164
    move-result-object v5

    .line 165
    if-eqz v5, :cond_3

    .line 167
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 170
    move-result-object v2

    .line 171
    invoke-virtual {p0, v2, v3, v6, v4}, Lcom/android/server/clipboard/ClipboardService;->grantUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V

    .line 174
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 176
    goto :goto_0

    .line 177
    :cond_4
    iget-object p0, p2, Lcom/android/server/clipboard/ClipboardService$Clipboard;->activePermissionOwners:Ljava/util/HashSet;

    .line 179
    invoke-virtual {p0, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_5
    return-void

    .line 183
    :cond_6
    :try_start_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 185
    new-instance p2, Ljava/lang/StringBuilder;

    .line 187
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    const-string p1, " does not own package "

    .line 195
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    move-result-object p1

    .line 205
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 208
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    :catchall_0
    move-exception p0

    .line 210
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 213
    throw p0
.end method

.method public static -$$Nest$mgetIntendingDeviceId(Lcom/android/server/clipboard/ClipboardService;II)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    goto/16 :goto_3

    .line 8
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDeviceIdsForUid(I)Landroid/util/ArraySet;

    .line 11
    move-result-object v0

    .line 12
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    .line 14
    monitor-enter v2

    .line 15
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/clipboard/ClipboardService;->mAllowVirtualDeviceSilos:Z

    .line 17
    const/4 v4, -0x1

    .line 18
    if-nez v3, :cond_3

    .line 20
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_1

    .line 26
    if-eqz p1, :cond_3

    .line 28
    :cond_1
    monitor-exit v2

    .line 29
    :cond_2
    move v1, v4

    .line 30
    goto :goto_3

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_4

    .line 33
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object v2

    .line 38
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_5

    .line 44
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Ljava/lang/Integer;

    .line 50
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 53
    move-result v3

    .line 54
    invoke-virtual {p0, v3}, Lcom/android/server/clipboard/ClipboardService;->deviceUsesDefaultClipboard(I)Z

    .line 57
    move-result v3

    .line 58
    if-nez v3, :cond_4

    .line 60
    move v2, v1

    .line 61
    goto :goto_0

    .line 62
    :cond_5
    const/4 v2, 0x1

    .line 63
    :goto_0
    if-nez p1, :cond_6

    .line 65
    if-eqz v2, :cond_2

    .line 67
    goto :goto_3

    .line 68
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->deviceUsesDefaultClipboard(I)Z

    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_7

    .line 74
    move v3, v1

    .line 75
    goto :goto_1

    .line 76
    :cond_7
    move v3, p1

    .line 77
    :goto_1
    iget-object v4, p0, Lcom/android/server/clipboard/ClipboardService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 79
    invoke-virtual {v4, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDeviceOwnerUid(I)I

    .line 82
    move-result v4

    .line 83
    if-eq v4, p2, :cond_a

    .line 85
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 92
    move-result p1

    .line 93
    if-nez p1, :cond_a

    .line 95
    if-nez v3, :cond_8

    .line 97
    if-eqz v2, :cond_8

    .line 99
    goto :goto_2

    .line 100
    :cond_8
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 103
    move-result-object p1

    .line 104
    check-cast p1, Ljava/lang/Integer;

    .line 106
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 109
    move-result p1

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->deviceUsesDefaultClipboard(I)Z

    .line 113
    move-result p0

    .line 114
    if-eqz p0, :cond_9

    .line 116
    goto :goto_3

    .line 117
    :cond_9
    move v1, p1

    .line 118
    goto :goto_3

    .line 119
    :cond_a
    :goto_2
    move v1, v3

    .line 120
    :goto_3
    return v1

    .line 121
    :goto_4
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    throw p0
.end method

.method public static -$$Nest$mgetIntendingUid(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p1}, Lcom/android/server/clipboard/ClipboardService;->getIntendingUserId(ILjava/lang/String;)I

    .line 4
    move-result p0

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    move-result p1

    .line 9
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 12
    move-result p1

    .line 13
    invoke-static {p0, p1}, Landroid/os/UserHandle;->getUid(II)I

    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public static -$$Nest$mgetSemClipboardService(Lcom/android/server/clipboard/ClipboardService;)Lcom/android/server/semclipboard/SemClipboardService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mSemClipboardService:Lcom/android/server/semclipboard/SemClipboardService;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string/jumbo v0, "semclipboard"

    .line 9
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/sec/clipboard/IClipboardService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardService;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/server/semclipboard/SemClipboardService;

    .line 19
    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mSemClipboardService:Lcom/android/server/semclipboard/SemClipboardService;

    .line 21
    :goto_0
    return-object v0
.end method

.method public static -$$Nest$misDeviceLocked(Lcom/android/server/clipboard/ClipboardService;II)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 11
    move-result-object p0

    .line 12
    const-class v2, Landroid/app/KeyguardManager;

    .line 14
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Landroid/app/KeyguardManager;

    .line 20
    if-eqz p0, :cond_0

    .line 22
    invoke-virtual {p0, p1, p2}, Landroid/app/KeyguardManager;->isDeviceLocked(II)Z

    .line 25
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    if-eqz p0, :cond_0

    .line 28
    const/4 p0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    return p0

    .line 37
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    throw p0
.end method

.method public static -$$Nest$mnotifyTextClassifierLocked(Lcom/android/server/clipboard/ClipboardService;Lcom/android/server/clipboard/ClipboardService$Clipboard;Ljava/lang/String;I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    .line 6
    if-nez v0, :cond_0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    .line 19
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x1

    .line 24
    if-le v2, v3, :cond_2

    .line 26
    goto :goto_0

    .line 27
    :cond_2
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    .line 34
    move-result-object v1

    .line 35
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_6

    .line 41
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 44
    move-result-object v1

    .line 45
    if-nez v1, :cond_6

    .line 47
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    .line 50
    move-result-object v0

    .line 51
    if-nez v0, :cond_6

    .line 53
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;

    .line 55
    if-nez v0, :cond_3

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mWm:Lcom/android/server/wm/WindowManagerInternal;

    .line 60
    invoke-virtual {p0, p3}, Lcom/android/server/wm/WindowManagerInternal;->isUidFocused(I)Z

    .line 63
    move-result p0

    .line 64
    if-nez p0, :cond_4

    .line 66
    goto :goto_0

    .line 67
    :cond_4
    iget-object p0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mNotifiedTextClassifierUids:Landroid/util/SparseBooleanArray;

    .line 69
    invoke-virtual {p0, p3}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 72
    move-result p0

    .line 73
    if-eqz p0, :cond_5

    .line 75
    goto :goto_0

    .line 76
    :cond_5
    iget-object p0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mNotifiedTextClassifierUids:Landroid/util/SparseBooleanArray;

    .line 78
    invoke-virtual {p0, p3, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 81
    new-instance p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda4;

    .line 83
    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Lcom/android/server/clipboard/ClipboardService$Clipboard;Landroid/view/textclassifier/TextClassifier;)V

    .line 86
    invoke-static {p0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 89
    :cond_6
    :goto_0
    return-void
.end method

.method public static -$$Nest$mshowAccessNotificationLocked(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;IILcom/android/server/clipboard/ClipboardService$Clipboard;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object v0, p4, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    .line 6
    if-nez v0, :cond_0

    .line 8
    goto/16 :goto_2

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 17
    move-result-object v0

    .line 18
    iget-boolean v1, p0, Lcom/android/server/clipboard/ClipboardService;->mShowAccessNotifications:Z

    .line 20
    const-string/jumbo v2, "clipboard_show_access_notifications"

    .line 23
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 29
    goto/16 :goto_2

    .line 31
    :cond_1
    iget v0, p4, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipUid:I

    .line 33
    invoke-static {p2, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 39
    goto/16 :goto_2

    .line 41
    :cond_2
    invoke-virtual {p0, p3, p1}, Lcom/android/server/clipboard/ClipboardService;->isDefaultIme(ILjava/lang/String;)Z

    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_3

    .line 47
    goto/16 :goto_2

    .line 49
    :cond_3
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mContentCaptureInternal:Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

    .line 51
    if-eqz v0, :cond_4

    .line 53
    invoke-virtual {v0, p2, p3}, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->isContentCaptureServiceForUser(II)Z

    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_4

    .line 59
    goto/16 :goto_2

    .line 61
    :cond_4
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAutofillInternal:Landroid/view/autofill/AutofillManagerInternal;

    .line 63
    if-eqz v0, :cond_5

    .line 65
    invoke-virtual {v0, p2, p3}, Landroid/view/autofill/AutofillManagerInternal;->isAugmentedAutofillServiceForUser(II)Z

    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_5

    .line 71
    goto/16 :goto_2

    .line 73
    :cond_5
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    .line 75
    const-string v1, "android.permission.SUPPRESS_CLIPBOARD_ACCESS_NOTIFICATION"

    .line 77
    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_6

    .line 83
    goto/16 :goto_2

    .line 85
    :cond_6
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 87
    iget v1, p4, Lcom/android/server/clipboard/ClipboardService$Clipboard;->deviceId:I

    .line 89
    if-eqz v1, :cond_7

    .line 91
    invoke-virtual {v0, v1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDeviceOwnerUid(I)I

    .line 94
    move-result v2

    .line 95
    if-ne v2, p2, :cond_7

    .line 97
    goto/16 :goto_2

    .line 99
    :cond_7
    iget-object v2, p4, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mNotifiedUids:Landroid/util/SparseBooleanArray;

    .line 101
    invoke-virtual {v2, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_8

    .line 107
    goto/16 :goto_2

    .line 109
    :cond_8
    new-instance v2, Landroid/util/ArraySet;

    .line 111
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 114
    if-eqz v1, :cond_d

    .line 116
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 119
    move-result-object v3

    .line 120
    const-class v4, Landroid/hardware/display/DisplayManager;

    .line 122
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 125
    move-result-object v3

    .line 126
    check-cast v3, Landroid/hardware/display/DisplayManager;

    .line 128
    iget-object v4, p0, Lcom/android/server/clipboard/ClipboardService;->mWm:Lcom/android/server/wm/WindowManagerInternal;

    .line 130
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerInternal;->getTopFocusedDisplayId()I

    .line 133
    move-result v4

    .line 134
    invoke-virtual {v0, v1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDisplayIdsForDevice(I)Landroid/util/ArraySet;

    .line 137
    move-result-object v0

    .line 138
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    move-result-object v5

    .line 142
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 145
    move-result v5

    .line 146
    if-eqz v5, :cond_9

    .line 148
    invoke-virtual {v3, v4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 151
    move-result-object v4

    .line 152
    if-eqz v4, :cond_9

    .line 154
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {v0, v4}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 165
    goto :goto_1

    .line 166
    :cond_9
    const/4 v4, 0x0

    .line 167
    :goto_0
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 170
    move-result v5

    .line 171
    if-ge v4, v5, :cond_b

    .line 173
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 176
    move-result-object v5

    .line 177
    check-cast v5, Ljava/lang/Integer;

    .line 179
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 182
    move-result v5

    .line 183
    invoke-virtual {v3, v5}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 186
    move-result-object v5

    .line 187
    if-eqz v5, :cond_a

    .line 189
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 192
    move-result-object v6

    .line 193
    invoke-virtual {v6, v5}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    .line 196
    move-result-object v5

    .line 197
    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 202
    goto :goto_0

    .line 203
    :cond_b
    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    .line 206
    move-result v0

    .line 207
    if-nez v0, :cond_c

    .line 209
    goto :goto_1

    .line 210
    :cond_c
    const-string/jumbo v0, "getToastContexts Couldn\'t find any VirtualDisplays for VirtualDevice "

    .line 213
    const-string v3, "ClipboardService"

    .line 215
    invoke-static {v1, v0, v3}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 221
    move-result-object v0

    .line 222
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 225
    :goto_1
    new-instance v0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda5;

    .line 227
    invoke-direct {v0, p0, p1, p3, v2}, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;ILandroid/util/ArraySet;)V

    .line 230
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 233
    iget-object p0, p4, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mNotifiedUids:Landroid/util/SparseBooleanArray;

    .line 235
    const/4 p1, 0x1

    .line 236
    invoke-virtual {p0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 239
    :goto_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v0, Landroid/util/SparseArrayMap;

    .line 6
    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArrayMap;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mContext:Landroid/content/Context;

    .line 14
    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 16
    const/4 v1, 0x1

    .line 17
    iput-boolean v1, p0, Lcom/android/server/clipboard/ClipboardService;->mShowAccessNotifications:Z

    .line 19
    iput-boolean v1, p0, Lcom/android/server/clipboard/ClipboardService;->mAllowVirtualDeviceSilos:Z

    .line 21
    const/16 v2, 0x190

    .line 23
    iput v2, p0, Lcom/android/server/clipboard/ClipboardService;->mMaxClassificationLength:I

    .line 25
    new-instance v2, Ljava/lang/Object;

    .line 27
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    .line 32
    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mSemClipboardService:Lcom/android/server/semclipboard/SemClipboardService;

    .line 34
    const-class v2, Landroid/app/ActivityManagerInternal;

    .line 36
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Landroid/app/ActivityManagerInternal;

    .line 42
    iput-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 44
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    .line 47
    move-result-object v2

    .line 48
    iput-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mUgm:Landroid/app/IUriGrantsManager;

    .line 50
    const-class v2, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 52
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 58
    iput-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 60
    const-class v3, Lcom/android/server/wm/WindowManagerInternal;

    .line 62
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Lcom/android/server/wm/WindowManagerInternal;

    .line 68
    iput-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mWm:Lcom/android/server/wm/WindowManagerInternal;

    .line 70
    const-class v3, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 72
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 75
    move-result-object v3

    .line 76
    check-cast v3, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 78
    iput-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 80
    if-nez v3, :cond_0

    .line 82
    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 86
    move-result-object v0

    .line 87
    const-class v3, Landroid/companion/virtual/VirtualDeviceManager;

    .line 89
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Landroid/companion/virtual/VirtualDeviceManager;

    .line 95
    :goto_0
    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mVdm:Landroid/companion/virtual/VirtualDeviceManager;

    .line 97
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 104
    move-result-object v0

    .line 105
    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    .line 107
    const-string/jumbo v0, "user"

    .line 110
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Landroid/os/IUserManager;

    .line 116
    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mUm:Landroid/os/IUserManager;

    .line 118
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 121
    move-result-object v0

    .line 122
    const-string v3, "appops"

    .line 124
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Landroid/app/AppOpsManager;

    .line 130
    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    .line 132
    const-class v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

    .line 134
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 137
    move-result-object v0

    .line 138
    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

    .line 140
    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mContentCaptureInternal:Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

    .line 142
    const-class v0, Landroid/view/autofill/AutofillManagerInternal;

    .line 144
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 147
    move-result-object v0

    .line 148
    check-cast v0, Landroid/view/autofill/AutofillManagerInternal;

    .line 150
    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAutofillInternal:Landroid/view/autofill/AutofillManagerInternal;

    .line 152
    check-cast v2, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    .line 154
    const-string/jumbo v0, "clipboard"

    .line 157
    invoke-virtual {v2, v0}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    .line 160
    move-result-object v2

    .line 161
    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mContext:Landroid/content/Context;

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 166
    move-result-object v3

    .line 167
    sget-object v4, Landroid/sec/clipboard/data/ClipboardConstants;->CLIPBOARD_ALLOWED_URI:Landroid/net/Uri;

    .line 169
    invoke-static {p1}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    .line 172
    move-result-object v5

    .line 173
    const/4 v6, -0x1

    .line 174
    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 177
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 180
    move-result-object v3

    .line 181
    sget-object v4, Landroid/sec/clipboard/data/ClipboardConstants;->CLIPBOARD_SHARED_ALLOWED_URI:Landroid/net/Uri;

    .line 183
    invoke-static {p1}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    .line 186
    move-result-object v5

    .line 187
    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 190
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 193
    move-result-object v3

    .line 194
    sget-object v4, Landroid/sec/clipboard/data/ClipboardConstants;->CLIPBOARD_ALLOWED_DENYLIST_APP_URI:Landroid/net/Uri;

    .line 196
    invoke-static {p1}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    .line 199
    move-result-object v5

    .line 200
    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 203
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 206
    move-result-object v3

    .line 207
    sget-object v4, Landroid/sec/clipboard/data/ClipboardConstants;->CLIPBOARD_ALLOWED_ALLOWLIST_APP_URI:Landroid/net/Uri;

    .line 209
    invoke-static {p1}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    .line 212
    move-result-object p1

    .line 213
    invoke-virtual {v3, v4, v1, p1, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 216
    iput-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    .line 218
    sget-boolean p1, Landroid/os/Build;->IS_EMULATOR:Z

    .line 220
    if-eqz p1, :cond_1

    .line 222
    new-instance p1, Lcom/android/server/clipboard/EmulatorClipboardMonitor;

    .line 224
    new-instance v1, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda0;

    .line 226
    invoke-direct {v1, p0}, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/clipboard/ClipboardService;)V

    .line 229
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 232
    const/4 v2, 0x0

    .line 233
    iput-object v2, p1, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->mPipe:Ljava/io/FileDescriptor;

    .line 235
    new-instance v2, Ljava/lang/Thread;

    .line 237
    new-instance v3, Lcom/android/server/clipboard/EmulatorClipboardMonitor$$ExternalSyntheticLambda0;

    .line 239
    const/4 v4, 0x0

    .line 240
    invoke-direct {v3, v4, p1, v1}, Lcom/android/server/clipboard/EmulatorClipboardMonitor$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 243
    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 246
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 249
    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboardMonitor:Ljava/util/function/Consumer;

    .line 251
    goto :goto_1

    .line 252
    :cond_1
    sget-boolean p1, Landroid/os/Build;->IS_ARC:Z

    .line 254
    if-eqz p1, :cond_2

    .line 256
    new-instance p1, Lcom/android/server/clipboard/ArcClipboardMonitor;

    .line 258
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 261
    const-class v1, Lcom/android/server/clipboard/ArcClipboardMonitor;

    .line 263
    invoke-static {v1, p1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 266
    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboardMonitor:Ljava/util/function/Consumer;

    .line 268
    goto :goto_1

    .line 269
    :cond_2
    new-instance p1, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda1;

    .line 271
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 274
    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboardMonitor:Ljava/util/function/Consumer;

    .line 276
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->updateConfig()V

    .line 279
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 282
    move-result-object p1

    .line 283
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 286
    move-result-object p1

    .line 287
    new-instance v1, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda2;

    .line 289
    invoke-direct {v1, p0}, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/clipboard/ClipboardService;)V

    .line 292
    invoke-static {v0, p1, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 295
    new-instance p1, Landroid/os/HandlerThread;

    .line 297
    const-string v0, "ClipboardService"

    .line 299
    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 305
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 308
    move-result-object p1

    .line 309
    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mWorkerHandler:Landroid/os/Handler;

    .line 311
    return-void
.end method


# virtual methods
.method public final applyClassificationAndSendBroadcastLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Landroid/util/ArrayMap;Landroid/view/textclassifier/TextLinks;Landroid/view/textclassifier/TextClassifier;)V
    .locals 0

    .line 1
    iput-object p4, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;

    .line 3
    iget-object p4, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    .line 5
    invoke-virtual {p4}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    .line 8
    move-result-object p4

    .line 9
    invoke-virtual {p4, p2}, Landroid/content/ClipDescription;->setConfidenceScores(Ljava/util/Map;)V

    .line 12
    invoke-virtual {p3}, Landroid/view/textclassifier/TextLinks;->getLinks()Ljava/util/Collection;

    .line 15
    move-result-object p2

    .line 16
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 19
    move-result p2

    .line 20
    if-nez p2, :cond_0

    .line 22
    iget-object p2, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    .line 24
    const/4 p4, 0x0

    .line 25
    invoke-virtual {p2, p4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p2, p3}, Landroid/content/ClipData$Item;->setTextLinks(Landroid/view/textclassifier/TextLinks;)V

    .line 32
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->sendClipChangedBroadcast(Lcom/android/server/clipboard/ClipboardService$Clipboard;)V

    .line 35
    return-void
.end method

.method public final checkUriOwner(ILandroid/net/Uri;)V
    .locals 8

    .line 1
    if-eqz p2, :cond_1

    .line 3
    const-string/jumbo v0, "content"

    .line 6
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 20
    move-result-wide v0

    .line 21
    :try_start_0
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 23
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    .line 26
    move-result-object v5

    .line 27
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 30
    move-result v2

    .line 31
    invoke-static {p2, v2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    .line 34
    move-result v7

    .line 35
    move-object v2, p0

    .line 36
    check-cast v2, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    .line 38
    const/4 v4, 0x0

    .line 39
    const/4 v6, 0x1

    .line 40
    move v3, p1

    .line 41
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    throw p0

    .line 53
    :cond_1
    :goto_0
    return-void
.end method

.method public final clipboardAccessAllowed(IIIILjava/lang/String;Ljava/lang/String;Z)Z
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move v1, p1

    .line 3
    move v2, p2

    .line 4
    move v3, p3

    .line 5
    move/from16 v4, p4

    .line 7
    move-object/from16 v5, p5

    .line 9
    iget-object v6, v0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    .line 11
    invoke-virtual {v6, p2, v5}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 14
    const/4 v6, -0x1

    .line 15
    const-string v7, "ClipboardService"

    .line 17
    const/4 v8, 0x0

    .line 18
    if-ne v4, v6, :cond_0

    .line 20
    const-string v0, "Clipboard access denied to "

    .line 22
    const-string v1, "/"

    .line 24
    const-string v3, " due to invalid device id"

    .line 26
    invoke-static {p2, v0, v1, v5, v3}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return v8

    .line 34
    :cond_0
    iget-object v6, v0, Lcom/android/server/clipboard/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    .line 36
    const-string v9, "android.permission.READ_CLIPBOARD_IN_BACKGROUND"

    .line 38
    invoke-virtual {v6, v9, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    move-result v6

    .line 42
    const/4 v9, 0x1

    .line 43
    if-nez v6, :cond_1

    .line 45
    move v6, v9

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p0, p3, v5}, Lcom/android/server/clipboard/ClipboardService;->isDefaultIme(ILjava/lang/String;)Z

    .line 50
    move-result v6

    .line 51
    :goto_0
    const/16 v10, 0x1d

    .line 53
    if-eq v1, v10, :cond_3

    .line 55
    const/16 v4, 0x1e

    .line 57
    if-ne v1, v4, :cond_2

    .line 59
    :goto_1
    move v6, v9

    .line 60
    goto/16 :goto_5

    .line 62
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 64
    const-string v2, "Unknown clipboard appop "

    .line 66
    invoke-static {p1, v2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 70
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 73
    throw v0

    .line 74
    :cond_3
    if-nez v6, :cond_8

    .line 76
    iget-object v6, v0, Lcom/android/server/clipboard/ClipboardService;->mWm:Lcom/android/server/wm/WindowManagerInternal;

    .line 78
    if-nez v4, :cond_4

    .line 80
    invoke-virtual {v6, p2}, Lcom/android/server/wm/WindowManagerInternal;->isUidFocused(I)Z

    .line 83
    move-result v10

    .line 84
    if-eqz v10, :cond_4

    .line 86
    goto :goto_3

    .line 87
    :cond_4
    if-eqz v4, :cond_6

    .line 89
    iget-object v10, v0, Lcom/android/server/clipboard/ClipboardService;->mVdm:Landroid/companion/virtual/VirtualDeviceManager;

    .line 91
    if-nez v10, :cond_5

    .line 93
    goto :goto_2

    .line 94
    :cond_5
    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerInternal;->getTopFocusedDisplayId()I

    .line 97
    move-result v10

    .line 98
    iget-object v11, v0, Lcom/android/server/clipboard/ClipboardService;->mVdm:Landroid/companion/virtual/VirtualDeviceManager;

    .line 100
    invoke-virtual {v11, v10}, Landroid/companion/virtual/VirtualDeviceManager;->getDeviceIdForDisplayId(I)I

    .line 103
    move-result v10

    .line 104
    if-ne v10, v4, :cond_6

    .line 106
    invoke-virtual {v6, p2}, Lcom/android/server/wm/WindowManagerInternal;->isUidFocused(I)Z

    .line 109
    move-result v10

    .line 110
    if-eqz v10, :cond_6

    .line 112
    goto :goto_3

    .line 113
    :cond_6
    :goto_2
    iget-object v10, v0, Lcom/android/server/clipboard/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    .line 115
    const-string v11, "android.permission.INTERNAL_SYSTEM_WINDOW"

    .line 117
    invoke-virtual {v10, v11, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    move-result v10

    .line 121
    if-nez v10, :cond_7

    .line 123
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 126
    move-result v10

    .line 127
    invoke-virtual {v6, v10}, Lcom/android/server/wm/WindowManagerInternal;->isUidFocused(I)Z

    .line 130
    move-result v6

    .line 131
    if-eqz v6, :cond_7

    .line 133
    :goto_3
    move v6, v9

    .line 134
    goto :goto_4

    .line 135
    :cond_7
    move v6, v8

    .line 136
    :cond_8
    :goto_4
    if-nez v6, :cond_9

    .line 138
    iget-object v10, v0, Lcom/android/server/clipboard/ClipboardService;->mContentCaptureInternal:Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

    .line 140
    if-eqz v10, :cond_9

    .line 142
    invoke-virtual {v10, p2, p3}, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->isContentCaptureServiceForUser(II)Z

    .line 145
    move-result v6

    .line 146
    :cond_9
    if-nez v6, :cond_a

    .line 148
    iget-object v10, v0, Lcom/android/server/clipboard/ClipboardService;->mAutofillInternal:Landroid/view/autofill/AutofillManagerInternal;

    .line 150
    if-eqz v10, :cond_a

    .line 152
    invoke-virtual {v10, p2, p3}, Landroid/view/autofill/AutofillManagerInternal;->isAugmentedAutofillServiceForUser(II)Z

    .line 155
    move-result v6

    .line 156
    :cond_a
    if-nez v6, :cond_c

    .line 158
    if-eqz v4, :cond_c

    .line 160
    iget-object v6, v0, Lcom/android/server/clipboard/ClipboardService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 162
    if-eqz v6, :cond_b

    .line 164
    invoke-virtual {v6, v4}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDeviceOwnerUid(I)I

    .line 167
    move-result v4

    .line 168
    if-ne v4, v2, :cond_b

    .line 170
    goto :goto_1

    .line 171
    :cond_b
    move v6, v8

    .line 172
    :cond_c
    :goto_5
    if-nez v6, :cond_d

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    .line 176
    const-string v1, "Denying clipboard access to "

    .line 178
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string v1, ", application is not in focus nor is it a system service for user "

    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    move-result-object v0

    .line 196
    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return v8

    .line 200
    :cond_d
    if-eqz p7, :cond_e

    .line 202
    iget-object v0, v0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    .line 204
    const/4 v6, 0x0

    .line 205
    move v1, p1

    .line 206
    move v2, p2

    .line 207
    move-object/from16 v3, p5

    .line 209
    move-object/from16 v4, p6

    .line 211
    move-object v5, v6

    .line 212
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    move-result v0

    .line 216
    goto :goto_6

    .line 217
    :cond_e
    iget-object v0, v0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    .line 219
    invoke-virtual {v0, p1, p2, v5}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    .line 222
    move-result v0

    .line 223
    :goto_6
    if-nez v0, :cond_f

    .line 225
    move v8, v9

    .line 226
    :cond_f
    return v8
.end method

.method public final deviceUsesDefaultClipboard(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_2

    .line 4
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mVdm:Landroid/companion/virtual/VirtualDeviceManager;

    .line 6
    if-nez p0, :cond_0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x4

    .line 10
    invoke-virtual {p0, p1, v1}, Landroid/companion/virtual/VirtualDeviceManager;->getDevicePolicy(II)I

    .line 13
    move-result p0

    .line 14
    if-ne p0, v0, :cond_1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    :cond_2
    :goto_0
    return v0
.end method

.method public final getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;
    .locals 4

    .line 1
    const-string v0, "ClipboardService"

    .line 3
    const-string/jumbo v1, "getClipboardLocked called with not running userId "

    .line 6
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArrayMap;

    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v3

    .line 12
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/android/server/clipboard/ClipboardService$Clipboard;

    .line 18
    if-nez v2, :cond_2

    .line 20
    const/4 v2, 0x0

    .line 21
    :try_start_0
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mUm:Landroid/os/IUserManager;

    .line 23
    invoke-interface {v3, p1}, Landroid/os/IUserManager;->isUserRunning(I)Z

    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_0

    .line 29
    new-instance p0, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 41
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    return-object v2

    .line 45
    :catch_0
    move-exception p0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    if-eqz p2, :cond_1

    .line 49
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mVdm:Landroid/companion/virtual/VirtualDeviceManager;

    .line 51
    invoke-virtual {v1, p2}, Landroid/companion/virtual/VirtualDeviceManager;->isValidVirtualDeviceId(I)Z

    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_1

    .line 57
    const-string/jumbo p0, "getClipboardLocked called with invalid (possibly released) deviceId "

    .line 60
    invoke-static {p2, p0, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 63
    return-object v2

    .line 64
    :cond_1
    new-instance v2, Lcom/android/server/clipboard/ClipboardService$Clipboard;

    .line 66
    invoke-direct {v2, p2}, Lcom/android/server/clipboard/ClipboardService$Clipboard;-><init>(I)V

    .line 69
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArrayMap;

    .line 71
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {p0, p1, p2, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    goto :goto_1

    .line 79
    :goto_0
    const-string p1, "RemoteException calling UserManager: "

    .line 81
    invoke-static {p1, p0, v0}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 84
    :cond_2
    :goto_1
    return-object v2
.end method

.method public final getIntendingUserId(ILjava/lang/String;)I
    .locals 10

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 8
    move-result v0

    .line 9
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 15
    if-ne v0, p1, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 20
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 23
    move-result v3

    .line 24
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 27
    move-result v4

    .line 28
    const/4 v7, 0x2

    .line 29
    const-string/jumbo v8, "checkClipboardServiceCallingUser"

    .line 32
    const/4 v6, 0x0

    .line 33
    move v5, p1

    .line 34
    move-object v9, p2

    .line 35
    invoke-virtual/range {v2 .. v9}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    .line 38
    move-result p0

    .line 39
    return p0

    .line 40
    :cond_1
    :goto_0
    return v0
.end method

.method public final getRelatedProfiles(I)Ljava/util/List;
    .locals 4

    .line 1
    const-string v0, "Remote Exception calling UserManager: "

    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6
    move-result-wide v1

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mUm:Landroid/os/IUserManager;

    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-interface {p0, p1, v3}, Landroid/os/IUserManager;->getProfiles(IZ)Ljava/util/List;

    .line 13
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    return-object p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    :try_start_1
    const-string p1, "ClipboardService"

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 41
    const/4 p0, 0x0

    .line 42
    return-object p0

    .line 43
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    throw p0
.end method

.method public final grantUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V
    .locals 10

    .line 1
    if-eqz p1, :cond_1

    .line 3
    const-string/jumbo v0, "content"

    .line 6
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 20
    move-result-wide v0

    .line 21
    :try_start_0
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mUgm:Landroid/app/IUriGrantsManager;

    .line 23
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    .line 25
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    .line 28
    move-result-object v6

    .line 29
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 32
    move-result p0

    .line 33
    invoke-static {p1, p0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    .line 36
    move-result v8

    .line 37
    const/4 v7, 0x1

    .line 38
    move v4, p2

    .line 39
    move-object v5, p3

    .line 40
    move v9, p4

    .line 41
    invoke-interface/range {v2 .. v9}, Landroid/app/IUriGrantsManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :catch_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    throw p0

    .line 53
    :cond_1
    :goto_0
    return-void
.end method

.method public final hasRestriction(ILjava/lang/String;)Z
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mUm:Landroid/os/IUserManager;

    .line 3
    invoke-interface {p0, p2, p1}, Landroid/os/IUserManager;->hasUserRestriction(Ljava/lang/String;I)Z

    .line 6
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    const-string p1, "ClipboardService"

    .line 11
    const-string p2, "Remote Exception calling UserManager.getUserRestrictions: "

    .line 13
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method public final isDefaultIme(ILjava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    move-result-object p0

    .line 9
    const-string/jumbo v0, "default_input_method"

    .line 12
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    move-result p1

    .line 20
    const/4 v0, 0x0

    .line 21
    if-nez p1, :cond_1

    .line 23
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 26
    move-result-object p0

    .line 27
    if-nez p0, :cond_0

    .line 29
    return v0

    .line 30
    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result p0

    .line 38
    return p0

    .line 39
    :cond_1
    return v0
.end method

.method public final onStart()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;

    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;-><init>(Lcom/android/server/clipboard/ClipboardService;)V

    .line 6
    const-string/jumbo v1, "clipboard"

    .line 9
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 12
    invoke-static {}, Landroid/companion/virtual/flags/Flags;->vdmPublicApis()Z

    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 18
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 20
    if-eqz v0, :cond_1

    .line 22
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mVirtualDeviceRemovedReceiver:Lcom/android/server/clipboard/ClipboardService$1;

    .line 24
    if-eqz v0, :cond_0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance v0, Lcom/android/server/clipboard/ClipboardService$1;

    .line 29
    invoke-direct {v0, p0}, Lcom/android/server/clipboard/ClipboardService$1;-><init>(Lcom/android/server/clipboard/ClipboardService;)V

    .line 32
    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mVirtualDeviceRemovedReceiver:Lcom/android/server/clipboard/ClipboardService$1;

    .line 34
    new-instance v0, Landroid/content/IntentFilter;

    .line 36
    const-string v1, "android.companion.virtual.action.VIRTUAL_DEVICE_REMOVED"

    .line 38
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 44
    move-result-object v1

    .line 45
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mVirtualDeviceRemovedReceiver:Lcom/android/server/clipboard/ClipboardService$1;

    .line 47
    const/4 v2, 0x4

    .line 48
    invoke-virtual {v1, p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-static {}, Landroid/companion/virtual/flags/Flags;->vdmPublicApis()Z

    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_3

    .line 58
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mVdm:Landroid/companion/virtual/VirtualDeviceManager;

    .line 60
    if-eqz v0, :cond_3

    .line 62
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mVirtualDeviceListener:Lcom/android/server/clipboard/ClipboardService$2;

    .line 64
    if-eqz v1, :cond_2

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    new-instance v1, Lcom/android/server/clipboard/ClipboardService$2;

    .line 69
    invoke-direct {v1, p0}, Lcom/android/server/clipboard/ClipboardService$2;-><init>(Lcom/android/server/clipboard/ClipboardService;)V

    .line 72
    iput-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mVirtualDeviceListener:Lcom/android/server/clipboard/ClipboardService$2;

    .line 74
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 81
    move-result-object v1

    .line 82
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mVirtualDeviceListener:Lcom/android/server/clipboard/ClipboardService$2;

    .line 84
    invoke-virtual {v0, v1, p0}, Landroid/companion/virtual/VirtualDeviceManager;->registerVirtualDeviceListener(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;)V

    .line 87
    :cond_3
    :goto_0
    return-void
.end method

.method public final onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArrayMap;

    .line 6
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 9
    move-result p1

    .line 10
    invoke-virtual {p0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method

.method public final revokeUriPermission(ILandroid/net/Uri;)V
    .locals 4

    .line 1
    if-eqz p2, :cond_1

    .line 3
    const-string/jumbo v0, "content"

    .line 6
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 20
    move-result-wide v0

    .line 21
    :try_start_0
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 23
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    .line 25
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    .line 28
    move-result-object v3

    .line 29
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 32
    move-result p1

    .line 33
    invoke-static {p2, p1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    .line 36
    move-result p1

    .line 37
    check-cast v2, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    .line 39
    const/4 p2, 0x1

    .line 40
    invoke-virtual {v2, p0, v3, p2, p1}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 51
    throw p0

    .line 52
    :cond_1
    :goto_0
    return-void
.end method

.method public final sendClipChangedBroadcast(Lcom/android/server/clipboard/ClipboardService$Clipboard;)V
    .locals 13

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    .line 7
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-ge v3, v2, :cond_1

    .line 14
    :try_start_0
    iget-object v4, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    .line 16
    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;

    .line 22
    iget-object v10, v4, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->mPackageName:Ljava/lang/String;

    .line 24
    iget-object v11, v4, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->mAttributionTag:Ljava/lang/String;

    .line 26
    iget v7, v4, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->mUid:I

    .line 28
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    .line 31
    move-result v8

    .line 32
    iget v9, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->deviceId:I

    .line 34
    const/4 v12, 0x1

    .line 35
    const/16 v6, 0x1d

    .line 37
    move-object v5, p0

    .line 38
    invoke-virtual/range {v5 .. v12}, Lcom/android/server/clipboard/ClipboardService;->clipboardAccessAllowed(IIIILjava/lang/String;Ljava/lang/String;Z)Z

    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_0

    .line 44
    iget-object v4, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    .line 46
    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Landroid/content/IOnPrimaryClipChangedListener;

    .line 52
    invoke-interface {v4}, Landroid/content/IOnPrimaryClipChangedListener;->dispatchPrimaryClipChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    goto :goto_1

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    iget-object p1, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    .line 59
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 62
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    throw p0

    .line 66
    :catch_0
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    iget-object p0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    .line 71
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 74
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 77
    return-void
.end method

.method public final setPrimaryClipInternalLocked(Landroid/content/ClipData;IILjava/lang/String;)V
    .locals 7

    if-nez p3, :cond_0

    .line 1
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboardMonitor:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3
    invoke-virtual {p0, v0, p3}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0, v1, p1, p2, p4}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternalLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Landroid/content/ClipData;ILjava/lang/String;)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/clipboard/ClipboardService;->getRelatedProfiles(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_7

    .line 7
    const-string/jumbo v4, "no_cross_profile_copy_paste"

    invoke-virtual {p0, v0, v4}, Lcom/android/server/clipboard/ClipboardService;->hasRestriction(ILjava/lang/String;)Z

    move-result v4

    xor-int/2addr v4, v3

    if-nez v4, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    new-instance v4, Landroid/content/ClipData;

    invoke-direct {v4, p1}, Landroid/content/ClipData;-><init>(Landroid/content/ClipData;)V

    .line 9
    invoke-virtual {v4}, Landroid/content/ClipData;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v3

    :goto_0
    if-ltz p1, :cond_4

    .line 10
    new-instance v5, Landroid/content/ClipData$Item;

    invoke-virtual {v4, p1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/ClipData$Item;-><init>(Landroid/content/ClipData$Item;)V

    invoke-virtual {v4, p1, v5}, Landroid/content/ClipData;->setItemAt(ILandroid/content/ClipData$Item;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 11
    :cond_4
    const-class p1, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    invoke-virtual {v4}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object p1

    const-string v5, "SemImageClipData"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 12
    invoke-virtual {v4, v0}, Landroid/content/ClipData;->fixUrisLight(I)V

    :cond_5
    move-object p1, v4

    :goto_1
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_7

    .line 13
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    if-eq v5, v0, :cond_6

    .line 14
    const-string/jumbo v6, "no_sharing_into_profile"

    invoke-virtual {p0, v5, v6}, Lcom/android/server/clipboard/ClipboardService;->hasRestriction(ILjava/lang/String;)Z

    move-result v6

    xor-int/2addr v6, v3

    if-eqz v6, :cond_6

    .line 15
    invoke-virtual {p0, v5, p3}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 16
    invoke-virtual {p0, v5, p1, p2, p4}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternalNoClassifyLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Landroid/content/ClipData;ILjava/lang/String;)V

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method public final setPrimaryClipInternalLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Landroid/content/ClipData;ILjava/lang/String;)V
    .locals 9

    .line 17
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-eqz p2, :cond_4

    .line 18
    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p2, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 19
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x2

    if-nez v0, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget v4, p0, Lcom/android/server/clipboard/ClipboardService;->mMaxClassificationLength:I

    if-le v0, v4, :cond_1

    goto :goto_2

    .line 20
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 21
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 22
    const-class v1, Landroid/view/textclassifier/TextClassificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassificationManager;

    .line 23
    new-instance v1, Landroid/view/textclassifier/TextClassificationContext$Builder;

    .line 24
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, "clipboard"

    invoke-direct {v1, v4, v8}, Landroid/view/textclassifier/TextClassificationContext$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassificationContext$Builder;->build()Landroid/view/textclassifier/TextClassificationContext;

    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextClassificationManager;->createTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;)Landroid/view/textclassifier/TextClassifier;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 28
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {v4}, Landroid/view/textclassifier/TextClassifier;->getMaxGenerateLinksTextLength()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 29
    invoke-virtual {p2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/ClipDescription;->setClassificationStatus(I)V

    goto :goto_3

    .line 30
    :cond_2
    new-instance v7, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;

    iget v6, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->deviceId:I

    move-object v0, v7

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/CharSequence;Landroid/content/ClipData;Landroid/view/textclassifier/TextClassifier;II)V

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 31
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 32
    throw p0

    .line 33
    :cond_3
    :goto_2
    invoke-virtual {p2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/ClipDescription;->setClassificationStatus(I)V

    .line 34
    :cond_4
    :goto_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternalNoClassifyLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Landroid/content/ClipData;ILjava/lang/String;)V

    return-void
.end method

.method public final setPrimaryClipInternalNoClassifyLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Landroid/content/ClipData;ILjava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    .line 3
    if-nez v0, :cond_0

    .line 5
    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_3

    .line 13
    iget-object v2, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    .line 15
    invoke-virtual {v2, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 18
    move-result-object v2

    .line 19
    iget v3, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipUid:I

    .line 21
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 24
    move-result-object v4

    .line 25
    if-eqz v4, :cond_1

    .line 27
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {p0, v3, v4}, Lcom/android/server/clipboard/ClipboardService;->revokeUriPermission(ILandroid/net/Uri;)V

    .line 34
    :cond_1
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    .line 37
    move-result-object v2

    .line 38
    if-eqz v2, :cond_2

    .line 40
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 43
    move-result-object v4

    .line 44
    if-eqz v4, :cond_2

    .line 46
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {p0, v3, v2}, Lcom/android/server/clipboard/ClipboardService;->revokeUriPermission(ILandroid/net/Uri;)V

    .line 53
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 55
    goto :goto_0

    .line 56
    :cond_3
    :goto_1
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->activePermissionOwners:Ljava/util/HashSet;

    .line 58
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 61
    if-nez p2, :cond_4

    .line 63
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    .line 65
    if-nez v0, :cond_4

    .line 67
    return-void

    .line 68
    :cond_4
    iput-object p2, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    .line 70
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mNotifiedUids:Landroid/util/SparseBooleanArray;

    .line 72
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 75
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mNotifiedTextClassifierUids:Landroid/util/SparseBooleanArray;

    .line 77
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 80
    if-eqz p2, :cond_5

    .line 82
    iput p3, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipUid:I

    .line 84
    iput-object p4, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mPrimaryClipPackage:Ljava/lang/String;

    .line 86
    goto :goto_2

    .line 87
    :cond_5
    const/16 p3, 0x270f

    .line 89
    iput p3, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipUid:I

    .line 91
    const/4 p3, 0x0

    .line 92
    iput-object p3, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mPrimaryClipPackage:Ljava/lang/String;

    .line 94
    :goto_2
    if-eqz p2, :cond_6

    .line 96
    invoke-virtual {p2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    .line 99
    move-result-object p2

    .line 100
    if-eqz p2, :cond_6

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 105
    move-result-wide p3

    .line 106
    invoke-virtual {p2, p3, p4}, Landroid/content/ClipDescription;->setTimestamp(J)V

    .line 109
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->sendClipChangedBroadcast(Lcom/android/server/clipboard/ClipboardService$Clipboard;)V

    .line 112
    return-void
.end method

.method public final updateConfig()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string/jumbo v1, "clipboard"

    .line 7
    const-string/jumbo v2, "show_access_notifications"

    .line 10
    const/4 v3, 0x1

    .line 11
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 14
    move-result v1

    .line 15
    iput-boolean v1, p0, Lcom/android/server/clipboard/ClipboardService;->mShowAccessNotifications:Z

    .line 17
    const-string/jumbo v1, "clipboard"

    .line 20
    const-string v2, "allow_virtualdevice_silos"

    .line 22
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 25
    move-result v1

    .line 26
    iput-boolean v1, p0, Lcom/android/server/clipboard/ClipboardService;->mAllowVirtualDeviceSilos:Z

    .line 28
    const-string/jumbo v1, "clipboard"

    .line 31
    const-string/jumbo v2, "max_classification_length"

    .line 34
    const/16 v3, 0x190

    .line 36
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 39
    move-result v1

    .line 40
    iput v1, p0, Lcom/android/server/clipboard/ClipboardService;->mMaxClassificationLength:I

    .line 42
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p0
.end method
