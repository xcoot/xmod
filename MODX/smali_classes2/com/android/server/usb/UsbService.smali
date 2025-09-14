.class public final Lcom/android/server/usb/UsbService;
.super Landroid/hardware/usb/IUsbManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public final mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

.field public final mDexObserver:Landroid/util/sysfwutil/DexObserver;

.field public final mHostManager:Lcom/android/server/usb/UsbHostManager;

.field public final mHostRestrictor:Lcom/android/server/usb/UsbHostRestrictor;

.field public final mLock:Ljava/lang/Object;

.field public final mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

.field public final mPortManager:Lcom/android/server/usb/UsbPortManager;

.field public final mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

.field public final mUsbDisableRequesters:Landroid/util/ArrayMap;

.field public final mUsbMonitorImpl:Lcom/android/server/usb/UsbMonitorImpl;

.field public final mUsbUI:Lcom/android/server/usb/UsbUI;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Landroid/hardware/usb/IUsbManager$Stub;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    .line 3
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbService;->mUsbDisableRequesters:Landroid/util/ArrayMap;

    .line 4
    const-string v0, "UsbHostNotification"

    .line 5
    invoke-static {v0}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/android/server/usb/UsbUI;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/android/server/usb/UsbUI;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mUsbUI:Lcom/android/server/usb/UsbUI;

    .line 7
    iput-object p1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    .line 8
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mUserManager:Landroid/os/UserManager;

    .line 9
    new-instance v1, Lcom/android/server/usb/UsbSettingsManager;

    invoke-direct {v1, p1, p0}, Lcom/android/server/usb/UsbSettingsManager;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbService;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    .line 10
    new-instance v1, Lcom/android/server/usb/UsbPermissionManager;

    invoke-direct {v1, p1, p0}, Lcom/android/server/usb/UsbPermissionManager;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbService;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    .line 11
    new-instance v2, Lcom/android/server/usb/UsbAlsaManager;

    invoke-direct {v2, p1}, Lcom/android/server/usb/UsbAlsaManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 13
    const-string/jumbo v4, "sep_basic"

    const-string/jumbo v5, "sep_lite_new"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 14
    new-instance v4, Landroid/util/sysfwutil/DexObserver;

    invoke-direct {v4}, Landroid/util/sysfwutil/DexObserver;-><init>()V

    iput-object v4, p0, Lcom/android/server/usb/UsbService;->mDexObserver:Landroid/util/sysfwutil/DexObserver;

    .line 15
    :cond_0
    const-string v4, "android.hardware.usb.host"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 16
    new-instance v3, Lcom/android/server/usb/UsbHostManager;

    invoke-direct {v3, p1, v2, v1}, Lcom/android/server/usb/UsbHostManager;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbPermissionManager;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    .line 17
    :cond_1
    const-string v3, "/sys/class/android_usb"

    .line 18
    invoke-static {v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 19
    new-instance v3, Lcom/android/server/usb/UsbDeviceManager;

    iget-object v4, p0, Lcom/android/server/usb/UsbService;->mDexObserver:Landroid/util/sysfwutil/DexObserver;

    invoke-direct {v3, p1, v2, v1, v4}, Lcom/android/server/usb/UsbDeviceManager;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbPermissionManager;Landroid/util/sysfwutil/DexObserver;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v1, :cond_4

    .line 21
    :cond_3
    new-instance v1, Lcom/android/server/usb/UsbPortManager;

    invoke-direct {v1, p1}, Lcom/android/server/usb/UsbPortManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 22
    :cond_4
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v1, :cond_5

    .line 23
    const-string v1, "UsbService"

    const-string v2, "At UsbService, UsbDeviceManager -> UsbHostRestrictor"

    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance v2, Lcom/android/server/usb/UsbHostRestrictor;

    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-direct {v2, p1, v3}, Lcom/android/server/usb/UsbHostRestrictor;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbService;->mHostRestrictor:Lcom/android/server/usb/UsbHostRestrictor;

    .line 25
    const-string v2, "At UsbService, UsbDeviceManager -> UsbMonitorImpl"

    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    new-instance v1, Lcom/android/server/usb/UsbMonitorImpl;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/usb/UsbMonitorImpl;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mUsbMonitorImpl:Lcom/android/server/usb/UsbMonitorImpl;

    :cond_5
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbService;->onSwitchUser(I)V

    .line 28
    new-instance v2, Lcom/android/server/usb/UsbService$1;

    invoke-direct {v2, p0}, Lcom/android/server/usb/UsbService$1;-><init>(Lcom/android/server/usb/UsbService;)V

    .line 29
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const/16 p0, 0x3e8

    .line 30
    invoke-virtual {v4, p0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 31
    const-string p0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v4, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 32
    const-string p0, "com.samsung.android.knox.intent.action.MTP_DISABLED_INTERNAL"

    invoke-virtual {v4, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 33
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbPortManager;Lcom/android/server/usb/UsbAlsaManager;Landroid/os/UserManager;Lcom/android/server/usb/UsbSettingsManager;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/hardware/usb/IUsbManager$Stub;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    .line 42
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbService;->mUsbDisableRequesters:Landroid/util/ArrayMap;

    .line 43
    iput-object p1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 45
    iput-object p3, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    .line 46
    iput-object p4, p0, Lcom/android/server/usb/UsbService;->mUserManager:Landroid/os/UserManager;

    .line 47
    iput-object p5, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    .line 48
    new-instance p2, Lcom/android/server/usb/UsbPermissionManager;

    invoke-direct {p2, p1, p0}, Lcom/android/server/usb/UsbPermissionManager;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbService;)V

    iput-object p2, p0, Lcom/android/server/usb/UsbService;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    return-void
.end method


# virtual methods
.method public final addAccessoryPackagesToPreferenceDenied(Landroid/hardware/usb/UsbAccessory;[Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "packageNames"

    .line 5
    .line 6
    .line 7
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, [Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    const-string v1, "android.permission.MANAGE_USB"

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    .line 29
    .line 30
    invoke-virtual {p0, p3}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->addAccessoryPackagesToDenied(Landroid/hardware/usb/UsbAccessory;[Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 43
    .line 44
    .line 45
    throw p0
.end method

.method public final addDevicePackagesToPreferenceDenied(Landroid/hardware/usb/UsbDevice;[Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "packageNames"

    .line 5
    .line 6
    .line 7
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, [Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    const-string v1, "android.permission.MANAGE_USB"

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    .line 29
    .line 30
    invoke-virtual {p0, p3}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->addDevicePackagesToDenied(Landroid/hardware/usb/UsbDevice;[Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 43
    .line 44
    .line 45
    throw p0
.end method

.method public final clearDefaults(Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string v1, "android.permission.MANAGE_USB"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    .line 24
    .line 25
    invoke-virtual {p0, p2}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->clearDefaults(Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    .line 39
    .line 40
    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 30
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const-string v3, "  dumpsys usb add-port \"matrix\" ufp"

    .line 8
    .line 9
    const-string v4, "  dumpsys usb add-port \"matrix\" dual"

    .line 10
    .line 11
    const-string v5, "?"

    .line 12
    .line 13
    const-string v6, "  dumpsys usb reset"

    .line 14
    .line 15
    iget-object v7, v0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    const-string v8, "UsbService"

    .line 18
    .line 19
    invoke-static {v7, v8, v1}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 20
    .line 21
    .line 22
    move-result v7

    .line 23
    if-nez v7, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    new-instance v7, Lcom/android/internal/util/IndentingPrintWriter;

    .line 27
    .line 28
    const-string v15, "  "

    .line 29
    .line 30
    invoke-direct {v7, v1, v15}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 34
    .line 35
    .line 36
    move-result-wide v18

    .line 37
    :try_start_0
    new-instance v1, Landroid/util/ArraySet;

    .line 38
    .line 39
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    const-string v9, "--proto"

    .line 46
    .line 47
    invoke-virtual {v1, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    array-length v9, v2

    .line 54
    if-eqz v9, :cond_1

    .line 55
    .line 56
    const/4 v9, 0x0

    .line 57
    aget-object v10, v2, v9

    .line 58
    .line 59
    const-string v11, "-a"

    .line 60
    .line 61
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v10

    .line 65
    if-nez v10, :cond_1

    .line 66
    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    :cond_1
    move-object v3, v15

    .line 70
    goto/16 :goto_1d

    .line 71
    .line 72
    :cond_2
    const-string/jumbo v1, "set-port-roles"

    .line 73
    .line 74
    .line 75
    aget-object v10, v2, v9

    .line 76
    .line 77
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    const-string v10, "device"

    .line 82
    .line 83
    const-string v12, "host"

    .line 84
    .line 85
    const-string/jumbo v9, "source"

    .line 86
    .line 87
    .line 88
    const-string/jumbo v13, "sink"

    .line 89
    .line 90
    .line 91
    const/16 v20, -0x1

    .line 92
    .line 93
    move-object/from16 v22, v12

    .line 94
    .line 95
    const-string v14, ""

    .line 96
    .line 97
    const-string v11, "Invalid power role: "

    .line 98
    .line 99
    const-string v12, "Invalid data role: "

    .line 100
    .line 101
    if-eqz v1, :cond_12

    .line 102
    .line 103
    :try_start_1
    array-length v1, v2

    .line 104
    move-object/from16 v25, v14

    .line 105
    .line 106
    const/4 v14, 0x4

    .line 107
    if-ne v1, v14, :cond_11

    .line 108
    .line 109
    const/4 v1, 0x1

    .line 110
    aget-object v3, v2, v1

    .line 111
    .line 112
    const/4 v1, 0x2

    .line 113
    aget-object v4, v2, v1

    .line 114
    .line 115
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    const v5, -0x356f97e5    # -4731917.5f

    .line 120
    .line 121
    .line 122
    if-eq v1, v5, :cond_5

    .line 123
    .line 124
    const v5, -0x1a426a07

    .line 125
    .line 126
    .line 127
    if-eq v1, v5, :cond_4

    .line 128
    .line 129
    const v5, 0x35de93

    .line 130
    .line 131
    .line 132
    if-eq v1, v5, :cond_3

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_3
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-eqz v1, :cond_6

    .line 140
    .line 141
    const/4 v1, 0x1

    .line 142
    goto :goto_1

    .line 143
    :catchall_0
    move-exception v0

    .line 144
    goto/16 :goto_20

    .line 145
    .line 146
    :cond_4
    const-string/jumbo v1, "no-power"

    .line 147
    .line 148
    .line 149
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-eqz v1, :cond_6

    .line 154
    .line 155
    const/4 v1, 0x2

    .line 156
    goto :goto_1

    .line 157
    :cond_5
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-eqz v1, :cond_6

    .line 162
    .line 163
    const/4 v1, 0x0

    .line 164
    goto :goto_1

    .line 165
    :cond_6
    :goto_0
    move/from16 v1, v20

    .line 166
    .line 167
    :goto_1
    if-eqz v1, :cond_9

    .line 168
    .line 169
    const/4 v4, 0x1

    .line 170
    if-eq v1, v4, :cond_8

    .line 171
    .line 172
    const/4 v4, 0x2

    .line 173
    if-eq v1, v4, :cond_7

    .line 174
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    aget-object v1, v2, v4

    .line 181
    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    .line 191
    .line 192
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    :cond_7
    const/4 v1, 0x3

    .line 197
    const/4 v11, 0x0

    .line 198
    goto :goto_2

    .line 199
    :cond_8
    const/4 v1, 0x3

    .line 200
    const/4 v11, 0x2

    .line 201
    goto :goto_2

    .line 202
    :cond_9
    const/4 v1, 0x3

    .line 203
    const/4 v11, 0x1

    .line 204
    :goto_2
    :try_start_2
    aget-object v4, v2, v1

    .line 205
    .line 206
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    const v5, -0x4f94e1aa

    .line 211
    .line 212
    .line 213
    if-eq v1, v5, :cond_c

    .line 214
    .line 215
    const v5, 0x30f5a8

    .line 216
    .line 217
    .line 218
    if-eq v1, v5, :cond_b

    .line 219
    .line 220
    const v5, 0x7b007436

    .line 221
    .line 222
    .line 223
    if-eq v1, v5, :cond_a

    .line 224
    .line 225
    goto :goto_3

    .line 226
    :cond_a
    const-string/jumbo v1, "no-data"

    .line 227
    .line 228
    .line 229
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    if-eqz v1, :cond_d

    .line 234
    .line 235
    const/4 v1, 0x2

    .line 236
    goto :goto_4

    .line 237
    :cond_b
    move-object/from16 v1, v22

    .line 238
    .line 239
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    if-eqz v1, :cond_d

    .line 244
    .line 245
    const/4 v1, 0x0

    .line 246
    goto :goto_4

    .line 247
    :cond_c
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    if-eqz v1, :cond_d

    .line 252
    .line 253
    const/4 v1, 0x1

    .line 254
    goto :goto_4

    .line 255
    :cond_d
    :goto_3
    move/from16 v1, v20

    .line 256
    .line 257
    :goto_4
    if-eqz v1, :cond_10

    .line 258
    .line 259
    const/4 v4, 0x1

    .line 260
    if-eq v1, v4, :cond_f

    .line 261
    .line 262
    const/4 v4, 0x2

    .line 263
    if-eq v1, v4, :cond_e

    .line 264
    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    const/4 v1, 0x3

    .line 271
    aget-object v1, v2, v1

    .line 272
    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 281
    .line 282
    .line 283
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 284
    .line 285
    .line 286
    return-void

    .line 287
    :cond_e
    const/4 v12, 0x0

    .line 288
    goto :goto_5

    .line 289
    :cond_f
    const/4 v12, 0x2

    .line 290
    goto :goto_5

    .line 291
    :cond_10
    const/4 v12, 0x1

    .line 292
    :goto_5
    :try_start_3
    iget-object v9, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 293
    .line 294
    if-eqz v9, :cond_47

    .line 295
    .line 296
    const/4 v14, 0x0

    .line 297
    move-object v10, v3

    .line 298
    const-wide/16 v1, 0x0

    .line 299
    .line 300
    move-object v13, v7

    .line 301
    move-object/from16 v3, v25

    .line 302
    .line 303
    invoke-virtual/range {v9 .. v14}, Lcom/android/server/usb/UsbPortManager;->setPortRoles(Ljava/lang/String;IILcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usb/UsbService$2;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 307
    .line 308
    .line 309
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 310
    .line 311
    new-instance v4, Lcom/android/internal/util/dump/DualDumpOutputStream;

    .line 312
    .line 313
    new-instance v5, Lcom/android/internal/util/IndentingPrintWriter;

    .line 314
    .line 315
    invoke-direct {v5, v7, v15}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    invoke-direct {v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0, v4, v3, v1, v2}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 322
    .line 323
    .line 324
    goto/16 :goto_1f

    .line 325
    .line 326
    :cond_11
    move-object v14, v3

    .line 327
    move-object/from16 v23, v6

    .line 328
    .line 329
    move-object/from16 v1, v22

    .line 330
    .line 331
    move-object/from16 v6, v25

    .line 332
    .line 333
    :goto_6
    move-object/from16 v22, v4

    .line 334
    .line 335
    const-wide/16 v3, 0x0

    .line 336
    .line 337
    goto :goto_7

    .line 338
    :cond_12
    move-object/from16 v23, v6

    .line 339
    .line 340
    move-object v6, v14

    .line 341
    move-object/from16 v1, v22

    .line 342
    .line 343
    move-object v14, v3

    .line 344
    goto :goto_6

    .line 345
    :goto_7
    const-string v3, "add-port"

    .line 346
    .line 347
    move-object/from16 v24, v14

    .line 348
    .line 349
    const/4 v4, 0x0

    .line 350
    aget-object v14, v2, v4

    .line 351
    .line 352
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 356
    const-string v4, "dfp"

    .line 357
    .line 358
    const-string/jumbo v14, "ufp"

    .line 359
    .line 360
    .line 361
    move-object/from16 v26, v8

    .line 362
    .line 363
    const-string v8, "Invalid mode: "

    .line 364
    .line 365
    if-eqz v3, :cond_1e

    .line 366
    .line 367
    :try_start_4
    array-length v3, v2

    .line 368
    move-object/from16 v27, v12

    .line 369
    .line 370
    const/4 v12, 0x3

    .line 371
    if-lt v3, v12, :cond_1f

    .line 372
    .line 373
    const/4 v3, 0x1

    .line 374
    aget-object v10, v2, v3

    .line 375
    .line 376
    const/4 v1, 0x2

    .line 377
    aget-object v3, v2, v1

    .line 378
    .line 379
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 380
    .line 381
    .line 382
    move-result v1

    .line 383
    sparse-switch v1, :sswitch_data_0

    .line 384
    .line 385
    .line 386
    goto :goto_8

    .line 387
    :sswitch_0
    const-string/jumbo v1, "none"

    .line 388
    .line 389
    .line 390
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    move-result v1

    .line 394
    if-eqz v1, :cond_13

    .line 395
    .line 396
    const/4 v1, 0x3

    .line 397
    goto :goto_9

    .line 398
    :sswitch_1
    const-string v1, "dual"

    .line 399
    .line 400
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    move-result v1

    .line 404
    if-eqz v1, :cond_13

    .line 405
    .line 406
    const/4 v1, 0x2

    .line 407
    goto :goto_9

    .line 408
    :sswitch_2
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 409
    .line 410
    .line 411
    move-result v1

    .line 412
    if-eqz v1, :cond_13

    .line 413
    .line 414
    const/4 v1, 0x0

    .line 415
    goto :goto_9

    .line 416
    :sswitch_3
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    move-result v1

    .line 420
    if-eqz v1, :cond_13

    .line 421
    .line 422
    const/4 v1, 0x1

    .line 423
    goto :goto_9

    .line 424
    :cond_13
    :goto_8
    move/from16 v1, v20

    .line 425
    .line 426
    :goto_9
    if-eqz v1, :cond_17

    .line 427
    .line 428
    const/4 v3, 0x1

    .line 429
    if-eq v1, v3, :cond_16

    .line 430
    .line 431
    const/4 v3, 0x2

    .line 432
    if-eq v1, v3, :cond_15

    .line 433
    .line 434
    const/4 v4, 0x3

    .line 435
    if-eq v1, v4, :cond_14

    .line 436
    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    .line 438
    .line 439
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    aget-object v1, v2, v3

    .line 443
    .line 444
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 452
    .line 453
    .line 454
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 455
    .line 456
    .line 457
    return-void

    .line 458
    :cond_14
    const/4 v11, 0x0

    .line 459
    goto :goto_a

    .line 460
    :cond_15
    const/4 v11, 0x3

    .line 461
    goto :goto_a

    .line 462
    :cond_16
    const/4 v11, 0x2

    .line 463
    goto :goto_a

    .line 464
    :cond_17
    const/4 v11, 0x1

    .line 465
    :goto_a
    const/4 v1, 0x3

    .line 466
    const/4 v12, 0x0

    .line 467
    const/4 v13, 0x0

    .line 468
    :goto_b
    :try_start_5
    array-length v3, v2

    .line 469
    if-ge v1, v3, :cond_1d

    .line 470
    .line 471
    aget-object v3, v2, v1

    .line 472
    .line 473
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 474
    .line 475
    .line 476
    move-result v4

    .line 477
    const v5, -0x5282495d

    .line 478
    .line 479
    .line 480
    if-eq v4, v5, :cond_19

    .line 481
    .line 482
    const v5, 0x1844dc29

    .line 483
    .line 484
    .line 485
    if-eq v4, v5, :cond_18

    .line 486
    .line 487
    goto :goto_c

    .line 488
    :cond_18
    const-string v4, "--compliance-warnings"

    .line 489
    .line 490
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 491
    .line 492
    .line 493
    move-result v3

    .line 494
    if-eqz v3, :cond_1a

    .line 495
    .line 496
    const/4 v3, 0x0

    .line 497
    goto :goto_d

    .line 498
    :cond_19
    const-string v4, "--displayport"

    .line 499
    .line 500
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 501
    .line 502
    .line 503
    move-result v3

    .line 504
    if-eqz v3, :cond_1a

    .line 505
    .line 506
    const/4 v3, 0x1

    .line 507
    goto :goto_d

    .line 508
    :cond_1a
    :goto_c
    move/from16 v3, v20

    .line 509
    .line 510
    :goto_d
    if-eqz v3, :cond_1c

    .line 511
    .line 512
    const/4 v4, 0x1

    .line 513
    if-eq v3, v4, :cond_1b

    .line 514
    .line 515
    new-instance v3, Ljava/lang/StringBuilder;

    .line 516
    .line 517
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 518
    .line 519
    .line 520
    const-string v4, "Invalid Identifier: "

    .line 521
    .line 522
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    aget-object v4, v2, v1

    .line 526
    .line 527
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v3

    .line 534
    invoke-virtual {v7, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    goto :goto_e

    .line 538
    :cond_1b
    const/4 v13, 0x1

    .line 539
    goto :goto_e

    .line 540
    :cond_1c
    const/4 v12, 0x1

    .line 541
    :goto_e
    add-int/lit8 v1, v1, 0x1

    .line 542
    .line 543
    goto :goto_b

    .line 544
    :cond_1d
    iget-object v9, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 545
    .line 546
    if-eqz v9, :cond_47

    .line 547
    .line 548
    move-object v14, v7

    .line 549
    invoke-virtual/range {v9 .. v14}, Lcom/android/server/usb/UsbPortManager;->addSimulatedPort(Ljava/lang/String;IZZLcom/android/internal/util/IndentingPrintWriter;)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 553
    .line 554
    .line 555
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 556
    .line 557
    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream;

    .line 558
    .line 559
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    .line 560
    .line 561
    invoke-direct {v2, v7, v15}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    invoke-direct {v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    .line 565
    .line 566
    .line 567
    const-wide/16 v2, 0x0

    .line 568
    .line 569
    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 570
    .line 571
    .line 572
    goto/16 :goto_1f

    .line 573
    .line 574
    :cond_1e
    move-object/from16 v27, v12

    .line 575
    .line 576
    :cond_1f
    const-string v3, "connect-port"

    .line 577
    .line 578
    move-object/from16 v28, v15

    .line 579
    .line 580
    const/4 v12, 0x0

    .line 581
    aget-object v15, v2, v12

    .line 582
    .line 583
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 584
    .line 585
    .line 586
    move-result v3

    .line 587
    const/4 v12, 0x5

    .line 588
    if-eqz v3, :cond_32

    .line 589
    .line 590
    array-length v3, v2

    .line 591
    if-ne v3, v12, :cond_32

    .line 592
    .line 593
    const/4 v3, 0x1

    .line 594
    aget-object v12, v2, v3

    .line 595
    .line 596
    const/4 v15, 0x2

    .line 597
    aget-object v3, v2, v15

    .line 598
    .line 599
    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 600
    .line 601
    .line 602
    move-result v3

    .line 603
    if-eqz v3, :cond_20

    .line 604
    .line 605
    move-object/from16 v29, v6

    .line 606
    .line 607
    aget-object v6, v2, v15

    .line 608
    .line 609
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 610
    .line 611
    .line 612
    move-result v15

    .line 613
    const/16 v21, 0x1

    .line 614
    .line 615
    add-int/lit8 v15, v15, -0x1

    .line 616
    .line 617
    move/from16 v22, v3

    .line 618
    .line 619
    const/4 v3, 0x0

    .line 620
    invoke-virtual {v6, v3, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v6

    .line 624
    goto :goto_f

    .line 625
    :cond_20
    move/from16 v22, v3

    .line 626
    .line 627
    move-object/from16 v29, v6

    .line 628
    .line 629
    move v3, v15

    .line 630
    aget-object v6, v2, v3

    .line 631
    .line 632
    :goto_f
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 633
    .line 634
    .line 635
    move-result v3

    .line 636
    const v15, 0x1842e

    .line 637
    .line 638
    .line 639
    if-eq v3, v15, :cond_22

    .line 640
    .line 641
    const v4, 0x1c3ff

    .line 642
    .line 643
    .line 644
    if-eq v3, v4, :cond_21

    .line 645
    .line 646
    goto :goto_10

    .line 647
    :cond_21
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 648
    .line 649
    .line 650
    move-result v3

    .line 651
    if-eqz v3, :cond_23

    .line 652
    .line 653
    const/4 v3, 0x0

    .line 654
    goto :goto_11

    .line 655
    :cond_22
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 656
    .line 657
    .line 658
    move-result v3

    .line 659
    if-eqz v3, :cond_23

    .line 660
    .line 661
    const/4 v3, 0x1

    .line 662
    goto :goto_11

    .line 663
    :cond_23
    :goto_10
    move/from16 v3, v20

    .line 664
    .line 665
    :goto_11
    if-eqz v3, :cond_25

    .line 666
    .line 667
    const/4 v4, 0x1

    .line 668
    if-eq v3, v4, :cond_24

    .line 669
    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    .line 671
    .line 672
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 673
    .line 674
    .line 675
    const/4 v1, 0x2

    .line 676
    aget-object v1, v2, v1

    .line 677
    .line 678
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    .line 680
    .line 681
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 682
    .line 683
    .line 684
    move-result-object v0

    .line 685
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 686
    .line 687
    .line 688
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 689
    .line 690
    .line 691
    return-void

    .line 692
    :cond_24
    const/4 v3, 0x2

    .line 693
    :goto_12
    const/4 v4, 0x3

    .line 694
    goto :goto_13

    .line 695
    :cond_25
    const/4 v3, 0x1

    .line 696
    goto :goto_12

    .line 697
    :goto_13
    :try_start_6
    aget-object v6, v2, v4

    .line 698
    .line 699
    invoke-virtual {v6, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 700
    .line 701
    .line 702
    move-result v14

    .line 703
    if-eqz v14, :cond_26

    .line 704
    .line 705
    aget-object v6, v2, v4

    .line 706
    .line 707
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 708
    .line 709
    .line 710
    move-result v4

    .line 711
    const/4 v8, 0x1

    .line 712
    sub-int/2addr v4, v8

    .line 713
    const/4 v8, 0x0

    .line 714
    invoke-virtual {v6, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 715
    .line 716
    .line 717
    move-result-object v4

    .line 718
    goto :goto_14

    .line 719
    :cond_26
    aget-object v6, v2, v4

    .line 720
    .line 721
    move-object v4, v6

    .line 722
    :goto_14
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 723
    .line 724
    .line 725
    move-result v6

    .line 726
    const v8, -0x356f97e5    # -4731917.5f

    .line 727
    .line 728
    .line 729
    if-eq v6, v8, :cond_28

    .line 730
    .line 731
    const v8, 0x35de93

    .line 732
    .line 733
    .line 734
    if-eq v6, v8, :cond_27

    .line 735
    .line 736
    goto :goto_15

    .line 737
    :cond_27
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 738
    .line 739
    .line 740
    move-result v4

    .line 741
    if-eqz v4, :cond_29

    .line 742
    .line 743
    const/4 v4, 0x1

    .line 744
    goto :goto_16

    .line 745
    :cond_28
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 746
    .line 747
    .line 748
    move-result v4

    .line 749
    if-eqz v4, :cond_29

    .line 750
    .line 751
    const/4 v4, 0x0

    .line 752
    goto :goto_16

    .line 753
    :cond_29
    :goto_15
    move/from16 v4, v20

    .line 754
    .line 755
    :goto_16
    if-eqz v4, :cond_2b

    .line 756
    .line 757
    const/4 v6, 0x1

    .line 758
    if-eq v4, v6, :cond_2a

    .line 759
    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    .line 761
    .line 762
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 763
    .line 764
    .line 765
    const/4 v1, 0x3

    .line 766
    aget-object v1, v2, v1

    .line 767
    .line 768
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    .line 770
    .line 771
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 772
    .line 773
    .line 774
    move-result-object v0

    .line 775
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 776
    .line 777
    .line 778
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 779
    .line 780
    .line 781
    return-void

    .line 782
    :cond_2a
    const/4 v4, 0x4

    .line 783
    const/4 v13, 0x2

    .line 784
    goto :goto_17

    .line 785
    :cond_2b
    const/4 v4, 0x4

    .line 786
    const/4 v13, 0x1

    .line 787
    :goto_17
    :try_start_7
    aget-object v6, v2, v4

    .line 788
    .line 789
    invoke-virtual {v6, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 790
    .line 791
    .line 792
    move-result v5

    .line 793
    if-eqz v5, :cond_2c

    .line 794
    .line 795
    aget-object v6, v2, v4

    .line 796
    .line 797
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 798
    .line 799
    .line 800
    move-result v4

    .line 801
    const/4 v8, 0x1

    .line 802
    sub-int/2addr v4, v8

    .line 803
    const/4 v8, 0x0

    .line 804
    invoke-virtual {v6, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 805
    .line 806
    .line 807
    move-result-object v4

    .line 808
    goto :goto_18

    .line 809
    :cond_2c
    aget-object v6, v2, v4

    .line 810
    .line 811
    move-object v4, v6

    .line 812
    :goto_18
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 813
    .line 814
    .line 815
    move-result v6

    .line 816
    const v8, -0x4f94e1aa

    .line 817
    .line 818
    .line 819
    if-eq v6, v8, :cond_2e

    .line 820
    .line 821
    const v8, 0x30f5a8

    .line 822
    .line 823
    .line 824
    if-eq v6, v8, :cond_2d

    .line 825
    .line 826
    goto :goto_19

    .line 827
    :cond_2d
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 828
    .line 829
    .line 830
    move-result v1

    .line 831
    if-eqz v1, :cond_2f

    .line 832
    .line 833
    const/4 v9, 0x0

    .line 834
    goto :goto_1a

    .line 835
    :cond_2e
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 836
    .line 837
    .line 838
    move-result v1

    .line 839
    if-eqz v1, :cond_2f

    .line 840
    .line 841
    const/4 v9, 0x1

    .line 842
    goto :goto_1a

    .line 843
    :cond_2f
    :goto_19
    move/from16 v9, v20

    .line 844
    .line 845
    :goto_1a
    if-eqz v9, :cond_31

    .line 846
    .line 847
    const/4 v1, 0x1

    .line 848
    if-eq v9, v1, :cond_30

    .line 849
    .line 850
    new-instance v0, Ljava/lang/StringBuilder;

    .line 851
    .line 852
    move-object/from16 v1, v27

    .line 853
    .line 854
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 855
    .line 856
    .line 857
    const/4 v1, 0x4

    .line 858
    aget-object v1, v2, v1

    .line 859
    .line 860
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    .line 862
    .line 863
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 864
    .line 865
    .line 866
    move-result-object v0

    .line 867
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 868
    .line 869
    .line 870
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 871
    .line 872
    .line 873
    return-void

    .line 874
    :cond_30
    const/4 v15, 0x2

    .line 875
    goto :goto_1b

    .line 876
    :cond_31
    const/4 v15, 0x1

    .line 877
    :goto_1b
    :try_start_8
    iget-object v9, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 878
    .line 879
    if-eqz v9, :cond_47

    .line 880
    .line 881
    move-object v10, v12

    .line 882
    move v11, v3

    .line 883
    move/from16 v12, v22

    .line 884
    .line 885
    move-object/from16 v3, v28

    .line 886
    .line 887
    move/from16 v16, v5

    .line 888
    .line 889
    move-object/from16 v17, v7

    .line 890
    .line 891
    invoke-virtual/range {v9 .. v17}, Lcom/android/server/usb/UsbPortManager;->connectSimulatedPort(Ljava/lang/String;IZIZIZLcom/android/internal/util/IndentingPrintWriter;)V

    .line 892
    .line 893
    .line 894
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 895
    .line 896
    .line 897
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 898
    .line 899
    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream;

    .line 900
    .line 901
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    .line 902
    .line 903
    invoke-direct {v2, v7, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 904
    .line 905
    .line 906
    invoke-direct {v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    .line 907
    .line 908
    .line 909
    move-object/from16 v4, v29

    .line 910
    .line 911
    const-wide/16 v2, 0x0

    .line 912
    .line 913
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 914
    .line 915
    .line 916
    goto/16 :goto_1f

    .line 917
    .line 918
    :cond_32
    move-object v4, v6

    .line 919
    move-object/from16 v3, v28

    .line 920
    .line 921
    const-string v1, "disconnect-port"

    .line 922
    .line 923
    const/4 v5, 0x0

    .line 924
    aget-object v6, v2, v5

    .line 925
    .line 926
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 927
    .line 928
    .line 929
    move-result v1

    .line 930
    if-eqz v1, :cond_33

    .line 931
    .line 932
    array-length v1, v2

    .line 933
    const/4 v5, 0x2

    .line 934
    if-ne v1, v5, :cond_33

    .line 935
    .line 936
    const/4 v1, 0x1

    .line 937
    aget-object v1, v2, v1

    .line 938
    .line 939
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 940
    .line 941
    if-eqz v2, :cond_47

    .line 942
    .line 943
    invoke-virtual {v2, v1, v7}, Lcom/android/server/usb/UsbPortManager;->disconnectSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 944
    .line 945
    .line 946
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 947
    .line 948
    .line 949
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 950
    .line 951
    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream;

    .line 952
    .line 953
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    .line 954
    .line 955
    invoke-direct {v2, v7, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 956
    .line 957
    .line 958
    invoke-direct {v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    .line 959
    .line 960
    .line 961
    const-wide/16 v2, 0x0

    .line 962
    .line 963
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 964
    .line 965
    .line 966
    goto/16 :goto_1f

    .line 967
    .line 968
    :cond_33
    const-string/jumbo v1, "remove-port"

    .line 969
    .line 970
    .line 971
    const/4 v5, 0x0

    .line 972
    aget-object v6, v2, v5

    .line 973
    .line 974
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 975
    .line 976
    .line 977
    move-result v1

    .line 978
    if-eqz v1, :cond_34

    .line 979
    .line 980
    array-length v1, v2

    .line 981
    const/4 v5, 0x2

    .line 982
    if-ne v1, v5, :cond_34

    .line 983
    .line 984
    const/4 v1, 0x1

    .line 985
    aget-object v1, v2, v1

    .line 986
    .line 987
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 988
    .line 989
    if-eqz v2, :cond_47

    .line 990
    .line 991
    invoke-virtual {v2, v1, v7}, Lcom/android/server/usb/UsbPortManager;->removeSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 992
    .line 993
    .line 994
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 995
    .line 996
    .line 997
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 998
    .line 999
    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream;

    .line 1000
    .line 1001
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    .line 1002
    .line 1003
    invoke-direct {v2, v7, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1004
    .line 1005
    .line 1006
    invoke-direct {v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    .line 1007
    .line 1008
    .line 1009
    const-wide/16 v2, 0x0

    .line 1010
    .line 1011
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 1012
    .line 1013
    .line 1014
    goto/16 :goto_1f

    .line 1015
    .line 1016
    :cond_34
    const-string/jumbo v1, "reset"

    .line 1017
    .line 1018
    .line 1019
    const/4 v5, 0x0

    .line 1020
    aget-object v6, v2, v5

    .line 1021
    .line 1022
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1023
    .line 1024
    .line 1025
    move-result v1

    .line 1026
    if-eqz v1, :cond_35

    .line 1027
    .line 1028
    array-length v1, v2

    .line 1029
    const/4 v5, 0x1

    .line 1030
    if-ne v1, v5, :cond_35

    .line 1031
    .line 1032
    iget-object v1, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 1033
    .line 1034
    if-eqz v1, :cond_47

    .line 1035
    .line 1036
    invoke-virtual {v1, v7}, Lcom/android/server/usb/UsbPortManager;->resetSimulation(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1037
    .line 1038
    .line 1039
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1040
    .line 1041
    .line 1042
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 1043
    .line 1044
    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream;

    .line 1045
    .line 1046
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    .line 1047
    .line 1048
    invoke-direct {v2, v7, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1049
    .line 1050
    .line 1051
    invoke-direct {v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    .line 1052
    .line 1053
    .line 1054
    const-wide/16 v2, 0x0

    .line 1055
    .line 1056
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 1057
    .line 1058
    .line 1059
    goto/16 :goto_1f

    .line 1060
    .line 1061
    :cond_35
    const-string/jumbo v1, "set-contaminant-status"

    .line 1062
    .line 1063
    .line 1064
    const/4 v5, 0x0

    .line 1065
    aget-object v6, v2, v5

    .line 1066
    .line 1067
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1068
    .line 1069
    .line 1070
    move-result v1

    .line 1071
    if-eqz v1, :cond_36

    .line 1072
    .line 1073
    array-length v1, v2

    .line 1074
    const/4 v5, 0x3

    .line 1075
    if-ne v1, v5, :cond_36

    .line 1076
    .line 1077
    const/4 v1, 0x1

    .line 1078
    aget-object v1, v2, v1

    .line 1079
    .line 1080
    const/4 v5, 0x2

    .line 1081
    aget-object v2, v2, v5

    .line 1082
    .line 1083
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 1084
    .line 1085
    .line 1086
    move-result v2

    .line 1087
    iget-object v5, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 1088
    .line 1089
    if-eqz v5, :cond_47

    .line 1090
    .line 1091
    invoke-virtual {v5, v1, v2, v7}, Lcom/android/server/usb/UsbPortManager;->simulateContaminantStatus(Ljava/lang/String;ZLcom/android/internal/util/IndentingPrintWriter;)V

    .line 1092
    .line 1093
    .line 1094
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1095
    .line 1096
    .line 1097
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 1098
    .line 1099
    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream;

    .line 1100
    .line 1101
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    .line 1102
    .line 1103
    invoke-direct {v2, v7, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1104
    .line 1105
    .line 1106
    invoke-direct {v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    .line 1107
    .line 1108
    .line 1109
    const-wide/16 v2, 0x0

    .line 1110
    .line 1111
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 1112
    .line 1113
    .line 1114
    goto/16 :goto_1f

    .line 1115
    .line 1116
    :cond_36
    const-string/jumbo v1, "set-compliance-reasons"

    .line 1117
    .line 1118
    .line 1119
    const/4 v5, 0x0

    .line 1120
    aget-object v6, v2, v5

    .line 1121
    .line 1122
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1123
    .line 1124
    .line 1125
    move-result v1

    .line 1126
    if-eqz v1, :cond_37

    .line 1127
    .line 1128
    array-length v1, v2

    .line 1129
    const/4 v5, 0x3

    .line 1130
    if-ne v1, v5, :cond_37

    .line 1131
    .line 1132
    const/4 v1, 0x1

    .line 1133
    aget-object v1, v2, v1

    .line 1134
    .line 1135
    const/4 v5, 0x2

    .line 1136
    aget-object v2, v2, v5

    .line 1137
    .line 1138
    iget-object v5, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 1139
    .line 1140
    if-eqz v5, :cond_47

    .line 1141
    .line 1142
    invoke-virtual {v5, v1, v2, v7}, Lcom/android/server/usb/UsbPortManager;->simulateComplianceWarnings(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1143
    .line 1144
    .line 1145
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1146
    .line 1147
    .line 1148
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 1149
    .line 1150
    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream;

    .line 1151
    .line 1152
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    .line 1153
    .line 1154
    invoke-direct {v2, v7, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1155
    .line 1156
    .line 1157
    invoke-direct {v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    .line 1158
    .line 1159
    .line 1160
    const-wide/16 v2, 0x0

    .line 1161
    .line 1162
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 1163
    .line 1164
    .line 1165
    goto/16 :goto_1f

    .line 1166
    .line 1167
    :cond_37
    const-string v1, "clear-compliance-reasons"

    .line 1168
    .line 1169
    const/4 v5, 0x0

    .line 1170
    aget-object v6, v2, v5

    .line 1171
    .line 1172
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1173
    .line 1174
    .line 1175
    move-result v1

    .line 1176
    if-eqz v1, :cond_38

    .line 1177
    .line 1178
    array-length v1, v2

    .line 1179
    const/4 v5, 0x2

    .line 1180
    if-ne v1, v5, :cond_38

    .line 1181
    .line 1182
    const/4 v1, 0x1

    .line 1183
    aget-object v1, v2, v1

    .line 1184
    .line 1185
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 1186
    .line 1187
    if-eqz v2, :cond_47

    .line 1188
    .line 1189
    invoke-virtual {v2, v1, v4, v7}, Lcom/android/server/usb/UsbPortManager;->simulateComplianceWarnings(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1190
    .line 1191
    .line 1192
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1193
    .line 1194
    .line 1195
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 1196
    .line 1197
    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream;

    .line 1198
    .line 1199
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    .line 1200
    .line 1201
    invoke-direct {v2, v7, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1202
    .line 1203
    .line 1204
    invoke-direct {v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    .line 1205
    .line 1206
    .line 1207
    const-wide/16 v2, 0x0

    .line 1208
    .line 1209
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 1210
    .line 1211
    .line 1212
    goto/16 :goto_1f

    .line 1213
    .line 1214
    :cond_38
    const-string/jumbo v1, "set-displayport-status"

    .line 1215
    .line 1216
    .line 1217
    const/4 v5, 0x0

    .line 1218
    aget-object v6, v2, v5

    .line 1219
    .line 1220
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1221
    .line 1222
    .line 1223
    move-result v1

    .line 1224
    if-eqz v1, :cond_39

    .line 1225
    .line 1226
    array-length v1, v2

    .line 1227
    const/4 v5, 0x7

    .line 1228
    if-ne v1, v5, :cond_39

    .line 1229
    .line 1230
    const/4 v1, 0x1

    .line 1231
    aget-object v10, v2, v1

    .line 1232
    .line 1233
    const/4 v1, 0x2

    .line 1234
    aget-object v1, v2, v1

    .line 1235
    .line 1236
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1237
    .line 1238
    .line 1239
    move-result v11

    .line 1240
    const/4 v1, 0x3

    .line 1241
    aget-object v1, v2, v1

    .line 1242
    .line 1243
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1244
    .line 1245
    .line 1246
    move-result v1

    .line 1247
    const/4 v5, 0x4

    .line 1248
    aget-object v5, v2, v5

    .line 1249
    .line 1250
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1251
    .line 1252
    .line 1253
    move-result v13

    .line 1254
    aget-object v5, v2, v12

    .line 1255
    .line 1256
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 1257
    .line 1258
    .line 1259
    move-result v14

    .line 1260
    const/4 v5, 0x6

    .line 1261
    aget-object v2, v2, v5

    .line 1262
    .line 1263
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1264
    .line 1265
    .line 1266
    move-result v15

    .line 1267
    iget-object v9, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 1268
    .line 1269
    if-eqz v9, :cond_47

    .line 1270
    .line 1271
    move v12, v1

    .line 1272
    move-object/from16 v16, v7

    .line 1273
    .line 1274
    invoke-virtual/range {v9 .. v16}, Lcom/android/server/usb/UsbPortManager;->simulateDisplayPortAltModeInfo(Ljava/lang/String;IIIZILcom/android/internal/util/IndentingPrintWriter;)V

    .line 1275
    .line 1276
    .line 1277
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1278
    .line 1279
    .line 1280
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 1281
    .line 1282
    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream;

    .line 1283
    .line 1284
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    .line 1285
    .line 1286
    invoke-direct {v2, v7, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1287
    .line 1288
    .line 1289
    invoke-direct {v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    .line 1290
    .line 1291
    .line 1292
    const-wide/16 v2, 0x0

    .line 1293
    .line 1294
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 1295
    .line 1296
    .line 1297
    goto/16 :goto_1f

    .line 1298
    .line 1299
    :cond_39
    const-string/jumbo v1, "reset-displayport-status"

    .line 1300
    .line 1301
    .line 1302
    const/4 v5, 0x0

    .line 1303
    aget-object v6, v2, v5

    .line 1304
    .line 1305
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1306
    .line 1307
    .line 1308
    move-result v1

    .line 1309
    if-eqz v1, :cond_3a

    .line 1310
    .line 1311
    array-length v1, v2

    .line 1312
    const/4 v5, 0x2

    .line 1313
    if-ne v1, v5, :cond_3a

    .line 1314
    .line 1315
    const/4 v1, 0x1

    .line 1316
    aget-object v10, v2, v1

    .line 1317
    .line 1318
    iget-object v9, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 1319
    .line 1320
    if-eqz v9, :cond_47

    .line 1321
    .line 1322
    const/4 v12, 0x0

    .line 1323
    const/4 v13, 0x0

    .line 1324
    const/4 v14, 0x0

    .line 1325
    const/4 v15, 0x0

    .line 1326
    const/4 v11, 0x0

    .line 1327
    move-object/from16 v16, v7

    .line 1328
    .line 1329
    invoke-virtual/range {v9 .. v16}, Lcom/android/server/usb/UsbPortManager;->simulateDisplayPortAltModeInfo(Ljava/lang/String;IIIZILcom/android/internal/util/IndentingPrintWriter;)V

    .line 1330
    .line 1331
    .line 1332
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1333
    .line 1334
    .line 1335
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 1336
    .line 1337
    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream;

    .line 1338
    .line 1339
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    .line 1340
    .line 1341
    invoke-direct {v2, v7, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1342
    .line 1343
    .line 1344
    invoke-direct {v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    .line 1345
    .line 1346
    .line 1347
    const-wide/16 v2, 0x0

    .line 1348
    .line 1349
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 1350
    .line 1351
    .line 1352
    goto/16 :goto_1f

    .line 1353
    .line 1354
    :cond_3a
    const-string v1, "enable-usb-data"

    .line 1355
    .line 1356
    const/4 v5, 0x0

    .line 1357
    aget-object v6, v2, v5

    .line 1358
    .line 1359
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1360
    .line 1361
    .line 1362
    move-result v1

    .line 1363
    if-eqz v1, :cond_3c

    .line 1364
    .line 1365
    array-length v1, v2

    .line 1366
    const/4 v5, 0x3

    .line 1367
    if-ne v1, v5, :cond_3c

    .line 1368
    .line 1369
    const/4 v1, 0x1

    .line 1370
    aget-object v1, v2, v1

    .line 1371
    .line 1372
    const/4 v3, 0x2

    .line 1373
    aget-object v2, v2, v3

    .line 1374
    .line 1375
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 1376
    .line 1377
    .line 1378
    move-result v2

    .line 1379
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 1380
    .line 1381
    if-eqz v0, :cond_47

    .line 1382
    .line 1383
    invoke-virtual {v0}, Lcom/android/server/usb/UsbPortManager;->getPorts()[Landroid/hardware/usb/UsbPort;

    .line 1384
    .line 1385
    .line 1386
    move-result-object v0

    .line 1387
    array-length v3, v0

    .line 1388
    const/4 v9, 0x0

    .line 1389
    :goto_1c
    if-ge v9, v3, :cond_47

    .line 1390
    .line 1391
    aget-object v4, v0, v9

    .line 1392
    .line 1393
    invoke-virtual {v4}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    .line 1394
    .line 1395
    .line 1396
    move-result-object v5

    .line 1397
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1398
    .line 1399
    .line 1400
    move-result v5

    .line 1401
    if-eqz v5, :cond_3b

    .line 1402
    .line 1403
    invoke-virtual {v4, v2}, Landroid/hardware/usb/UsbPort;->enableUsbData(Z)I

    .line 1404
    .line 1405
    .line 1406
    move-result v0

    .line 1407
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1408
    .line 1409
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1410
    .line 1411
    .line 1412
    const-string v3, "enableUsbData "

    .line 1413
    .line 1414
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1415
    .line 1416
    .line 1417
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1418
    .line 1419
    .line 1420
    const-string v1, " status "

    .line 1421
    .line 1422
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1423
    .line 1424
    .line 1425
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1426
    .line 1427
    .line 1428
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1429
    .line 1430
    .line 1431
    move-result-object v0

    .line 1432
    move-object/from16 v4, v26

    .line 1433
    .line 1434
    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    .line 1436
    .line 1437
    goto/16 :goto_1f

    .line 1438
    .line 1439
    :cond_3b
    move-object/from16 v4, v26

    .line 1440
    .line 1441
    add-int/lit8 v9, v9, 0x1

    .line 1442
    .line 1443
    goto :goto_1c

    .line 1444
    :cond_3c
    const-string/jumbo v1, "ports"

    .line 1445
    .line 1446
    .line 1447
    const/4 v5, 0x0

    .line 1448
    aget-object v6, v2, v5

    .line 1449
    .line 1450
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1451
    .line 1452
    .line 1453
    move-result v1

    .line 1454
    if-eqz v1, :cond_3d

    .line 1455
    .line 1456
    array-length v1, v2

    .line 1457
    const/4 v5, 0x1

    .line 1458
    if-ne v1, v5, :cond_3d

    .line 1459
    .line 1460
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 1461
    .line 1462
    if-eqz v0, :cond_47

    .line 1463
    .line 1464
    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream;

    .line 1465
    .line 1466
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    .line 1467
    .line 1468
    invoke-direct {v2, v7, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1469
    .line 1470
    .line 1471
    invoke-direct {v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    .line 1472
    .line 1473
    .line 1474
    const-wide/16 v2, 0x0

    .line 1475
    .line 1476
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 1477
    .line 1478
    .line 1479
    goto/16 :goto_1f

    .line 1480
    .line 1481
    :cond_3d
    const-string v1, "dump-descriptors"

    .line 1482
    .line 1483
    const/4 v3, 0x0

    .line 1484
    aget-object v3, v2, v3

    .line 1485
    .line 1486
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1487
    .line 1488
    .line 1489
    move-result v1

    .line 1490
    if-eqz v1, :cond_3e

    .line 1491
    .line 1492
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    .line 1493
    .line 1494
    invoke-virtual {v0, v7, v2}, Lcom/android/server/usb/UsbHostManager;->dumpDescriptors(Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 1495
    .line 1496
    .line 1497
    goto/16 :goto_1f

    .line 1498
    .line 1499
    :cond_3e
    const-string v0, "Dump current USB state or issue command:"

    .line 1500
    .line 1501
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1502
    .line 1503
    .line 1504
    const-string v0, "  ports"

    .line 1505
    .line 1506
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1507
    .line 1508
    .line 1509
    const-string v0, "  set-port-roles <id> <source|sink|no-power> <host|device|no-data>"

    .line 1510
    .line 1511
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1512
    .line 1513
    .line 1514
    const-string v0, "  add-port <id> <ufp|dfp|dual|none> <optional args>"

    .line 1515
    .line 1516
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1517
    .line 1518
    .line 1519
    const-string v0, "    <optional args> include:"

    .line 1520
    .line 1521
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1522
    .line 1523
    .line 1524
    const-string v0, "      --compliance-warnings: enables compliance warnings on port"

    .line 1525
    .line 1526
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1527
    .line 1528
    .line 1529
    const-string v0, "      --displayport: enables DisplayPort Alt Mode on port"

    .line 1530
    .line 1531
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1532
    .line 1533
    .line 1534
    const-string v0, "  connect-port <id> <ufp|dfp><?> <source|sink><?> <host|device><?>"

    .line 1535
    .line 1536
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1537
    .line 1538
    .line 1539
    const-string v0, "    (add ? suffix if mode, power role, or data role can be changed)"

    .line 1540
    .line 1541
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1542
    .line 1543
    .line 1544
    const-string v0, "  disconnect-port <id>"

    .line 1545
    .line 1546
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1547
    .line 1548
    .line 1549
    const-string v0, "  remove-port <id>"

    .line 1550
    .line 1551
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1552
    .line 1553
    .line 1554
    const-string v0, "  reset"

    .line 1555
    .line 1556
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1557
    .line 1558
    .line 1559
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1560
    .line 1561
    .line 1562
    const-string v0, "Example USB type C port role switch:"

    .line 1563
    .line 1564
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1565
    .line 1566
    .line 1567
    const-string v0, "  dumpsys usb set-port-roles \"default\" source device"

    .line 1568
    .line 1569
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1570
    .line 1571
    .line 1572
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1573
    .line 1574
    .line 1575
    const-string v0, "Example USB type C port simulation with full capabilities:"

    .line 1576
    .line 1577
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1578
    .line 1579
    .line 1580
    const-string v0, "  dumpsys usb add-port \"matrix\" dual --compliance-warnings --displayport"

    .line 1581
    .line 1582
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1583
    .line 1584
    .line 1585
    const-string v0, "  dumpsys usb connect-port \"matrix\" ufp? sink? device?"

    .line 1586
    .line 1587
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1588
    .line 1589
    .line 1590
    const-string v0, "  dumpsys usb ports"

    .line 1591
    .line 1592
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1593
    .line 1594
    .line 1595
    const-string v0, "  dumpsys usb disconnect-port \"matrix\""

    .line 1596
    .line 1597
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1598
    .line 1599
    .line 1600
    const-string v0, "  dumpsys usb remove-port \"matrix\""

    .line 1601
    .line 1602
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1603
    .line 1604
    .line 1605
    move-object/from16 v0, v23

    .line 1606
    .line 1607
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1608
    .line 1609
    .line 1610
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1611
    .line 1612
    .line 1613
    const-string v1, "Example USB type C port where only power role can be changed:"

    .line 1614
    .line 1615
    invoke-virtual {v7, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1616
    .line 1617
    .line 1618
    move-object/from16 v1, v22

    .line 1619
    .line 1620
    invoke-virtual {v7, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1621
    .line 1622
    .line 1623
    const-string v2, "  dumpsys usb connect-port \"matrix\" dfp source? host"

    .line 1624
    .line 1625
    invoke-virtual {v7, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1626
    .line 1627
    .line 1628
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1629
    .line 1630
    .line 1631
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1632
    .line 1633
    .line 1634
    const-string v2, "Example USB OTG port where id pin determines function:"

    .line 1635
    .line 1636
    invoke-virtual {v7, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1637
    .line 1638
    .line 1639
    invoke-virtual {v7, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1640
    .line 1641
    .line 1642
    const-string v1, "  dumpsys usb connect-port \"matrix\" dfp source host"

    .line 1643
    .line 1644
    invoke-virtual {v7, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1645
    .line 1646
    .line 1647
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1648
    .line 1649
    .line 1650
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1651
    .line 1652
    .line 1653
    const-string v1, "Example USB device-only port:"

    .line 1654
    .line 1655
    invoke-virtual {v7, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1656
    .line 1657
    .line 1658
    move-object/from16 v1, v24

    .line 1659
    .line 1660
    invoke-virtual {v7, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1661
    .line 1662
    .line 1663
    const-string v2, "  dumpsys usb connect-port \"matrix\" ufp sink device"

    .line 1664
    .line 1665
    invoke-virtual {v7, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1666
    .line 1667
    .line 1668
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1669
    .line 1670
    .line 1671
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1672
    .line 1673
    .line 1674
    const-string v0, "Example simulate contaminant status:"

    .line 1675
    .line 1676
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1677
    .line 1678
    .line 1679
    invoke-virtual {v7, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1680
    .line 1681
    .line 1682
    const-string v0, "  dumpsys usb set-contaminant-status \"matrix\" true"

    .line 1683
    .line 1684
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1685
    .line 1686
    .line 1687
    const-string v0, "  dumpsys usb set-contaminant-status \"matrix\" false"

    .line 1688
    .line 1689
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1690
    .line 1691
    .line 1692
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1693
    .line 1694
    .line 1695
    const-string v0, "Example simulate compliance warnings:"

    .line 1696
    .line 1697
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1698
    .line 1699
    .line 1700
    const-string v0, "  dumpsys usb add-port \"matrix\" dual --compliance-warnings"

    .line 1701
    .line 1702
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1703
    .line 1704
    .line 1705
    const-string v0, "  dumpsys usb set-compliance-reasons \"matrix\" <reason-list>"

    .line 1706
    .line 1707
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1708
    .line 1709
    .line 1710
    const-string v0, "  dumpsys usb clear-compliance-reasons \"matrix\""

    .line 1711
    .line 1712
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1713
    .line 1714
    .line 1715
    const-string v0, "<reason-list> is expected to be formatted as \"1, ..., N\""

    .line 1716
    .line 1717
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1718
    .line 1719
    .line 1720
    const-string/jumbo v0, "with reasons that need to be simulated."

    .line 1721
    .line 1722
    .line 1723
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1724
    .line 1725
    .line 1726
    const-string v0, "  1: other"

    .line 1727
    .line 1728
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1729
    .line 1730
    .line 1731
    const-string v0, "  2: debug accessory"

    .line 1732
    .line 1733
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1734
    .line 1735
    .line 1736
    const-string v0, "  3: bc12"

    .line 1737
    .line 1738
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1739
    .line 1740
    .line 1741
    const-string v0, "  4: missing rp"

    .line 1742
    .line 1743
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1744
    .line 1745
    .line 1746
    const-string v0, "  5: input power limited"

    .line 1747
    .line 1748
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1749
    .line 1750
    .line 1751
    const-string v0, "  6: missing data lines"

    .line 1752
    .line 1753
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1754
    .line 1755
    .line 1756
    const-string v0, "  7: enumeration fail"

    .line 1757
    .line 1758
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1759
    .line 1760
    .line 1761
    const-string v0, "  8: flaky connection"

    .line 1762
    .line 1763
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1764
    .line 1765
    .line 1766
    const-string v0, "  9: unreliable io"

    .line 1767
    .line 1768
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1769
    .line 1770
    .line 1771
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1772
    .line 1773
    .line 1774
    const-string v0, "Example simulate DisplayPort Alt Mode Changes:"

    .line 1775
    .line 1776
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1777
    .line 1778
    .line 1779
    const-string v0, "  dumpsys usb add-port \"matrix\" dual --displayport"

    .line 1780
    .line 1781
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1782
    .line 1783
    .line 1784
    const-string v0, "  dumpsys usb set-displayport-status \"matrix\" <partner-sink> <cable> <num-lanes> <hpd> <link-training-status>"

    .line 1785
    .line 1786
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1787
    .line 1788
    .line 1789
    const-string v0, "The required fields are as followed:"

    .line 1790
    .line 1791
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1792
    .line 1793
    .line 1794
    const-string v0, "    <partner-sink>: type DisplayPortAltModeStatus"

    .line 1795
    .line 1796
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1797
    .line 1798
    .line 1799
    const-string v0, "    <cable>: type DisplayPortAltModeStatus"

    .line 1800
    .line 1801
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1802
    .line 1803
    .line 1804
    const-string v0, "    <num-lanes>: type int, expected 0, 2, or 4"

    .line 1805
    .line 1806
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1807
    .line 1808
    .line 1809
    const-string v0, "    <hpd>: type boolean, expected true or false"

    .line 1810
    .line 1811
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1812
    .line 1813
    .line 1814
    const-string v0, "    <link-training-status>: type LinkTrainingStatus"

    .line 1815
    .line 1816
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1817
    .line 1818
    .line 1819
    const-string v0, "  dumpsys usb reset-displayport-status \"matrix\""

    .line 1820
    .line 1821
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1822
    .line 1823
    .line 1824
    const-string/jumbo v0, "reset-displayport-status can also be used in order to set"

    .line 1825
    .line 1826
    .line 1827
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1828
    .line 1829
    .line 1830
    const-string/jumbo v0, "the DisplayPortInfo to default values."

    .line 1831
    .line 1832
    .line 1833
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1834
    .line 1835
    .line 1836
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1837
    .line 1838
    .line 1839
    const-string v0, "Example enableUsbData"

    .line 1840
    .line 1841
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1842
    .line 1843
    .line 1844
    const-string v0, "This dumpsys command functions for both simulated and real ports."

    .line 1845
    .line 1846
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1847
    .line 1848
    .line 1849
    const-string v0, "  dumpsys usb enable-usb-data \"matrix\" true"

    .line 1850
    .line 1851
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1852
    .line 1853
    .line 1854
    const-string v0, "  dumpsys usb enable-usb-data \"matrix\" false"

    .line 1855
    .line 1856
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1857
    .line 1858
    .line 1859
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1860
    .line 1861
    .line 1862
    const-string v0, "Example USB device descriptors:"

    .line 1863
    .line 1864
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1865
    .line 1866
    .line 1867
    const-string v0, "  dumpsys usb dump-descriptors -dump-short"

    .line 1868
    .line 1869
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1870
    .line 1871
    .line 1872
    const-string v0, "  dumpsys usb dump-descriptors -dump-tree"

    .line 1873
    .line 1874
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1875
    .line 1876
    .line 1877
    const-string v0, "  dumpsys usb dump-descriptors -dump-list"

    .line 1878
    .line 1879
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1880
    .line 1881
    .line 1882
    const-string v0, "  dumpsys usb dump-descriptors -dump-raw"

    .line 1883
    .line 1884
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1885
    .line 1886
    .line 1887
    goto :goto_1f

    .line 1888
    :goto_1d
    if-eqz v1, :cond_3f

    .line 1889
    .line 1890
    new-instance v2, Lcom/android/internal/util/dump/DualDumpOutputStream;

    .line 1891
    .line 1892
    new-instance v3, Landroid/util/proto/ProtoOutputStream;

    .line 1893
    .line 1894
    move-object/from16 v4, p1

    .line 1895
    .line 1896
    invoke-direct {v3, v4}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1897
    .line 1898
    .line 1899
    invoke-direct {v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    .line 1900
    .line 1901
    .line 1902
    goto :goto_1e

    .line 1903
    :cond_3f
    const-string v2, "USB MANAGER STATE (dumpsys usb):"

    .line 1904
    .line 1905
    invoke-virtual {v7, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1906
    .line 1907
    .line 1908
    new-instance v2, Lcom/android/internal/util/dump/DualDumpOutputStream;

    .line 1909
    .line 1910
    new-instance v4, Lcom/android/internal/util/IndentingPrintWriter;

    .line 1911
    .line 1912
    invoke-direct {v4, v7, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1913
    .line 1914
    .line 1915
    invoke-direct {v2, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    .line 1916
    .line 1917
    .line 1918
    :goto_1e
    iget-object v3, v0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 1919
    .line 1920
    if-eqz v3, :cond_40

    .line 1921
    .line 1922
    invoke-virtual {v3, v2}, Lcom/android/server/usb/UsbDeviceManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    .line 1923
    .line 1924
    .line 1925
    :cond_40
    iget-object v3, v0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    .line 1926
    .line 1927
    if-eqz v3, :cond_41

    .line 1928
    .line 1929
    invoke-virtual {v3, v2}, Lcom/android/server/usb/UsbHostManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    .line 1930
    .line 1931
    .line 1932
    :cond_41
    iget-object v3, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 1933
    .line 1934
    if-eqz v3, :cond_42

    .line 1935
    .line 1936
    const-string/jumbo v4, "port_manager"

    .line 1937
    .line 1938
    .line 1939
    const-wide v5, 0x10b00000003L

    .line 1940
    .line 1941
    .line 1942
    .line 1943
    .line 1944
    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 1945
    .line 1946
    .line 1947
    :cond_42
    iget-object v3, v0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    .line 1948
    .line 1949
    invoke-virtual {v3, v2}, Lcom/android/server/usb/UsbAlsaManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    .line 1950
    .line 1951
    .line 1952
    if-nez v1, :cond_46

    .line 1953
    .line 1954
    iget-object v1, v0, Lcom/android/server/usb/UsbService;->mHostRestrictor:Lcom/android/server/usb/UsbHostRestrictor;

    .line 1955
    .line 1956
    if-eqz v1, :cond_43

    .line 1957
    .line 1958
    invoke-virtual {v1, v7}, Lcom/android/server/usb/UsbHostRestrictor;->dump(Ljava/io/PrintWriter;)V

    .line 1959
    .line 1960
    .line 1961
    :cond_43
    iget-object v1, v0, Lcom/android/server/usb/UsbService;->mUsbMonitorImpl:Lcom/android/server/usb/UsbMonitorImpl;

    .line 1962
    .line 1963
    if-eqz v1, :cond_44

    .line 1964
    .line 1965
    invoke-virtual {v1, v7}, Lcom/android/server/usb/UsbMonitorImpl;->dump(Ljava/io/PrintWriter;)V

    .line 1966
    .line 1967
    .line 1968
    :cond_44
    iget-object v1, v0, Lcom/android/server/usb/UsbService;->mDexObserver:Landroid/util/sysfwutil/DexObserver;

    .line 1969
    .line 1970
    if-eqz v1, :cond_45

    .line 1971
    .line 1972
    invoke-virtual {v1, v7}, Landroid/util/sysfwutil/DexObserver;->dump(Ljava/io/PrintWriter;)V

    .line 1973
    .line 1974
    .line 1975
    :cond_45
    iget-object v1, v0, Lcom/android/server/usb/UsbService;->mUsbUI:Lcom/android/server/usb/UsbUI;

    .line 1976
    .line 1977
    if-eqz v1, :cond_46

    .line 1978
    .line 1979
    invoke-virtual {v1, v7}, Lcom/android/server/usb/UsbUI;->dump(Ljava/io/PrintWriter;)V

    .line 1980
    .line 1981
    .line 1982
    :cond_46
    iget-object v1, v0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    .line 1983
    .line 1984
    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbSettingsManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    .line 1985
    .line 1986
    .line 1987
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    .line 1988
    .line 1989
    invoke-virtual {v0, v2}, Lcom/android/server/usb/UsbPermissionManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    .line 1990
    .line 1991
    .line 1992
    invoke-virtual {v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->flush()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1993
    .line 1994
    .line 1995
    :cond_47
    :goto_1f
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1996
    .line 1997
    .line 1998
    return-void

    .line 1999
    :goto_20
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2000
    .line 2001
    .line 2002
    throw v0

    :sswitch_data_0
    .sparse-switch
        0x1842e -> :sswitch_3
        0x1c3ff -> :sswitch_2
        0x2f387c -> :sswitch_1
        0x33af38 -> :sswitch_0
    .end sparse-switch
.end method

.method public final enableContaminantDetection(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    const-string/jumbo v0, "portId must not be null"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string v1, "android.permission.MANAGE_USB"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/usb/UsbPortManager;->enableContaminantDetection(Ljava/lang/String;ZLcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    .line 35
    .line 36
    throw p0
.end method

.method public final enableLimitPowerTransfer(Ljava/lang/String;ZILandroid/hardware/usb/IUsbOperationInternal;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "portId must not be null. opID:"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    const-string v1, "android.permission.MANAGE_USB"

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 32
    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    int-to-long v5, p3

    .line 36
    const/4 v8, 0x0

    .line 37
    move-object v3, p1

    .line 38
    move v4, p2

    .line 39
    move-object v7, p4

    .line 40
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/usb/UsbPortManager;->enableLimitPowerTransfer(Ljava/lang/String;ZJLandroid/hardware/usb/IUsbOperationInternal;Lcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    const/4 p0, 0x1

    .line 47
    :try_start_1
    invoke-interface {p4, p0}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception p0

    .line 52
    :try_start_2
    const-string p1, "UsbService"

    .line 53
    .line 54
    const-string p2, "enableLimitPowerTransfer: Failed to call onOperationComplete"

    .line 55
    .line 56
    invoke-static {p1, p2, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 64
    .line 65
    .line 66
    throw p0
.end method

.method public final enableUsbData(Ljava/lang/String;ZILandroid/hardware/usb/IUsbOperationInternal;)Z
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v5

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move v2, p2

    .line 8
    move v3, p3

    .line 9
    move-object v4, p4

    .line 10
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usb/UsbService;->enableUsbDataInternal(Ljava/lang/String;ZILandroid/hardware/usb/IUsbOperationInternal;I)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public enableUsbDataInternal(Ljava/lang/String;ZILandroid/hardware/usb/IUsbOperationInternal;I)Z
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "enableUsbData: portId must not be null. opId:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v1, "enableUsbData: callback must not be null. opId:"

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    const-string v1, "android.permission.MANAGE_USB"

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/Flags;->enableUsbDataSignalStaking()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const/4 v1, 0x0

    .line 48
    const-string v2, "enableUsbData: Failed to call onOperationComplete"

    .line 49
    .line 50
    const-string v3, "UsbService"

    .line 51
    .line 52
    const/4 v4, 0x1

    .line 53
    if-eqz v0, :cond_0

    .line 54
    .line 55
    invoke-virtual {p0, p5, p1, p2}, Lcom/android/server/usb/UsbService;->shouldUpdateUsbSignaling(ILjava/lang/String;Z)Z

    .line 56
    .line 57
    .line 58
    move-result p5

    .line 59
    if-nez p5, :cond_0

    .line 60
    .line 61
    :try_start_0
    invoke-interface {p4, v4}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception p0

    .line 66
    invoke-static {v3, v2, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    .line 68
    .line 69
    :goto_0
    return v1

    .line 70
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 71
    .line 72
    .line 73
    move-result-wide v5

    .line 74
    :try_start_1
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 75
    .line 76
    if-eqz p0, :cond_1

    .line 77
    .line 78
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/usb/UsbPortManager;->enableUsbData(Ljava/lang/String;ZILandroid/hardware/usb/IUsbOperationInternal;)Z

    .line 79
    .line 80
    .line 81
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    goto :goto_1

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    goto :goto_2

    .line 85
    :cond_1
    :try_start_2
    invoke-interface {p4, v4}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :catch_1
    move-exception p0

    .line 90
    :try_start_3
    invoke-static {v3, v2, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 91
    .line 92
    .line 93
    :goto_1
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 94
    .line 95
    .line 96
    return v1

    .line 97
    :goto_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 98
    .line 99
    .line 100
    throw p0
.end method

.method public final enableUsbDataWhileDocked(Ljava/lang/String;ILandroid/hardware/usb/IUsbOperationInternal;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/usb/UsbService;->enableUsbDataWhileDockedInternal(Ljava/lang/String;ILandroid/hardware/usb/IUsbOperationInternal;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public enableUsbDataWhileDockedInternal(Ljava/lang/String;ILandroid/hardware/usb/IUsbOperationInternal;I)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "enableUsbDataWhileDocked: portId must not be null. opId:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v1, "enableUsbDataWhileDocked: callback must not be null. opId:"

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    const-string v1, "android.permission.MANAGE_USB"

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/Flags;->enableUsbDataSignalStaking()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const-string v1, "UsbService"

    .line 48
    .line 49
    const/4 v2, 0x1

    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    invoke-virtual {p0, p4, p1, v2}, Lcom/android/server/usb/UsbService;->shouldUpdateUsbSignaling(ILjava/lang/String;Z)Z

    .line 53
    .line 54
    .line 55
    move-result p4

    .line 56
    if-nez p4, :cond_0

    .line 57
    .line 58
    :try_start_0
    invoke-interface {p3, v2}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catch_0
    move-exception p0

    .line 63
    const-string p1, "enableUsbDataWhileDocked: Failed to call onOperationComplete"

    .line 64
    .line 65
    invoke-static {v1, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    .line 67
    .line 68
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 70
    .line 71
    .line 72
    move-result-wide v3

    .line 73
    :try_start_1
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 74
    .line 75
    if-eqz p0, :cond_1

    .line 76
    .line 77
    int-to-long v0, p2

    .line 78
    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/android/server/usb/UsbPortManager;->enableUsbDataWhileDocked(Ljava/lang/String;JLandroid/hardware/usb/IUsbOperationInternal;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    goto :goto_2

    .line 84
    :cond_1
    :try_start_2
    invoke-interface {p3, v2}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :catch_1
    move-exception p0

    .line 89
    :try_start_3
    const-string p1, "enableUsbData: Failed to call onOperationComplete"

    .line 90
    .line 91
    invoke-static {v1, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 92
    .line 93
    .line 94
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 99
    .line 100
    .line 101
    throw p0
.end method

.method public final getControlFd(J)Landroid/os/ParcelFileDescriptor;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->getControlFd_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mControlFds:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Ljava/io/FileDescriptor;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    .line 23
    .line 24
    .line 25
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v1, "Could not dup fd for "

    .line 30
    .line 31
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string p1, "UsbDeviceManager"

    .line 42
    .line 43
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    :goto_0
    return-object v0
.end method

.method public final getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 12
    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_1
    return-object v1
.end method

.method public final getCurrentFunctions()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    return-wide v0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->getCurrentFunctions_enforcePermission()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 28
    .line 29
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    .line 30
    .line 31
    return-wide v0
.end method

.method public final getCurrentUsbSpeed()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->getCurrentUsbSpeed_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 5
    .line 6
    const-string v1, "DeviceManager must not be null"

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 18
    .line 19
    iget p0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbSpeed:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    return p0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    .line 28
    .line 29
    throw p0
.end method

.method public final getDeviceList(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    .line 11
    .line 12
    if-eqz p0, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/lang/String;

    .line 38
    .line 39
    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Landroid/os/Parcelable;

    .line 46
    .line 47
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    monitor-exit v0

    .line 54
    goto :goto_2

    .line 55
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw p0

    .line 57
    :cond_2
    :goto_2
    return-void
.end method

.method public final getGadgetHalVersion()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->getGadgetHalVersion_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 5
    .line 6
    const-string v1, "DeviceManager must not be null"

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 18
    .line 19
    iget p0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentGadgetHalVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    return p0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    .line 28
    .line 29
    throw p0
.end method

.method public final getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;
    .locals 3

    .line 1
    const-string/jumbo v0, "portId must not be null"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string v1, "android.permission.MANAGE_USB"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbPortManager;->getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;

    .line 24
    .line 25
    .line 26
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    .line 32
    .line 33
    return-object v2

    .line 34
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public final getPorts()Ljava/util/List;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->getPorts_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/usb/UsbPortManager;->getPorts()[Landroid/hardware/usb/UsbPort;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    array-length v2, p0

    .line 22
    new-instance v3, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    :goto_0
    if-ge v4, v2, :cond_1

    .line 29
    .line 30
    aget-object v5, p0, v4

    .line 31
    .line 32
    invoke-static {v5}, Landroid/hardware/usb/ParcelableUsbPort;->of(Landroid/hardware/usb/UsbPort;)Landroid/hardware/usb/ParcelableUsbPort;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .line 38
    .line 39
    add-int/lit8 v4, v4, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 45
    .line 46
    .line 47
    return-object v3

    .line 48
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    throw p0
.end method

.method public final getScreenUnlockedFunctions()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->getScreenUnlockedFunctions_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$smgetDefaultUsbValue()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    invoke-static {v0, v1}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "adb"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    const-wide/16 v0, 0x0

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    .line 41
    .line 42
    :goto_1
    return-wide v0
.end method

.method public final getUsbHalVersion()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->getUsbHalVersion_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/usb/UsbPortManager;->mUsbPortHal:Lcom/android/server/usb/hal/port/UsbPortHal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    const/4 v2, -0x2

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    :try_start_1
    invoke-interface {p0}, Lcom/android/server/usb/hal/port/UsbPortHal;->getUsbHalVersion()I

    .line 18
    .line 19
    .line 20
    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :catch_0
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    return v2

    .line 25
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 26
    .line 27
    .line 28
    const/4 p0, -0x1

    .line 29
    return p0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 32
    .line 33
    .line 34
    throw p0
.end method

.method public final grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->grantAccessoryPermission_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbPermissionManager;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbUserPermissionManager;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    .line 28
    .line 29
    throw p0
.end method

.method public final grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->grantDevicePermission_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbPermissionManager;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbUserPermissionManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    .line 28
    .line 29
    throw p0
.end method

.method public final hasAccessoryPermission(Landroid/hardware/usb/UsbAccessory;)Z
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    .line 18
    .line 19
    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbPermissionManager;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/usb/UsbUserPermissionManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;II)Z

    .line 24
    .line 25
    .line 26
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 28
    .line 29
    .line 30
    return p0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 33
    .line 34
    .line 35
    throw p0
.end method

.method public final hasAccessoryPermissionWithIdentity(Landroid/hardware/usb/UsbAccessory;II)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->hasAccessoryPermissionWithIdentity_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbPermissionManager;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usb/UsbUserPermissionManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;II)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final hasDefaults(Ljava/lang/String;I)Z
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string v1, "android.permission.MANAGE_USB"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    .line 24
    .line 25
    invoke-virtual {p0, p2}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->hasDefaults(Ljava/lang/String;Landroid/os/UserHandle;)Z

    .line 30
    .line 31
    .line 32
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    .line 35
    .line 36
    return p0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    .line 40
    .line 41
    throw p0
.end method

.method public final hasDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    .line 18
    .line 19
    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbPermissionManager;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/usb/UsbUserPermissionManager;->hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)Z

    .line 24
    .line 25
    .line 26
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 28
    .line 29
    .line 30
    return p0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 33
    .line 34
    .line 35
    throw p0
.end method

.method public final hasDevicePermissionWithIdentity(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->hasDevicePermissionWithIdentity_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbPermissionManager;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/usb/UsbUserPermissionManager;->hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final isFunctionEnabled(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/usb/UsbService;->getCurrentFunctions()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {p1}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    and-long/2addr p0, v0

    .line 10
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    cmp-long p0, p0, v0

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    return p0
.end method

.method public final isModeChangeSupported(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->isModeChangeSupported_enforcePermission()V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "portId must not be null"

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    iget-object v3, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    :try_start_1
    iget-object p0, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 29
    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    iget-boolean v2, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeMode:Z

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    monitor-exit v3

    .line 38
    goto :goto_2

    .line 39
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 41
    :cond_1
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 42
    .line 43
    .line 44
    return v2

    .line 45
    :catchall_1
    move-exception p0

    .line 46
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 47
    .line 48
    .line 49
    throw p0
.end method

.method public final isSupportDexRestrict()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.MANAGE_USB"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mHostRestrictor:Lcom/android/server/usb/UsbHostRestrictor;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->isSupportDexRestrict()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method public final isUsbBlocked()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mHostRestrictor:Lcom/android/server/usb/UsbHostRestrictor;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    if-eqz p0, :cond_3

    .line 15
    .line 16
    sget-object p0, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    .line 17
    .line 18
    const-string v2, "ON"

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    sget-object p0, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    .line 28
    .line 29
    const-string v1, "OFF"

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    :goto_0
    move v1, v0

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    const-string p0, "UsbHostRestrictor"

    .line 40
    .line 41
    const-string v1, "Current USB BLOCK STATE is UNKNOWN!! So USB is UNBLOCKED as a default value"

    .line 42
    .line 43
    invoke-static {p0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :goto_1
    return v1

    .line 48
    :cond_3
    return v0
.end method

.method public final onSwitchUser(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput p1, p0, Lcom/android/server/usb/UsbService;->mCurrentUserId:I

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    .line 7
    .line 8
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    iget-object v3, v2, Lcom/android/server/usb/UsbHostManager;->mSettingsLock:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 23
    :try_start_1
    iput-object v1, v2, Lcom/android/server/usb/UsbHostManager;->mCurrentSettings:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    .line 24
    .line 25
    monitor-exit v3

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    :try_start_2
    throw p0

    .line 30
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 31
    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mLock:Ljava/lang/Object;

    .line 35
    .line 36
    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 37
    :try_start_3
    iput-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mCurrentSettings:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 40
    .line 41
    const/4 v1, 0x5

    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-virtual {p0, v1, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 48
    .line 49
    .line 50
    monitor-exit v2

    .line 51
    goto :goto_1

    .line 52
    :catchall_1
    move-exception p0

    .line 53
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 54
    :try_start_4
    throw p0

    .line 55
    :cond_1
    :goto_1
    monitor-exit v0

    .line 56
    return-void

    .line 57
    :catchall_2
    move-exception p0

    .line 58
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 59
    throw p0
.end method

.method public final openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;
    .locals 10

    .line 1
    const-string v0, "Cannot open "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    return-object v2

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->clearCallingIdentity()J

    .line 30
    .line 31
    .line 32
    move-result-wide v5

    .line 33
    :try_start_0
    iget-object v7, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    .line 34
    .line 35
    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 36
    :try_start_1
    iget-object v8, p0, Lcom/android/server/usb/UsbService;->mUserManager:Landroid/os/UserManager;

    .line 37
    .line 38
    iget v9, p0, Lcom/android/server/usb/UsbService;->mCurrentUserId:I

    .line 39
    .line 40
    invoke-virtual {v8, v4, v9}, Landroid/os/UserManager;->isSameProfileGroup(II)Z

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    if-eqz v8, :cond_1

    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    .line 49
    .line 50
    invoke-virtual {p0, v4}, Lcom/android/server/usb/UsbPermissionManager;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {v0, p1, p0, v3, v1}, Lcom/android/server/usb/UsbDeviceManager;->openAccessory(Landroid/hardware/usb/UsbAccessory;Lcom/android/server/usb/UsbUserPermissionManager;II)Landroid/os/ParcelFileDescriptor;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    invoke-static {v5, v6}, Landroid/hardware/usb/IUsbManager$Stub;->restoreCallingIdentity(J)V

    .line 60
    .line 61
    .line 62
    return-object p0

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    :try_start_2
    const-string p0, "UsbService"

    .line 66
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p1, " for user "

    .line 76
    .line 77
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string p1, " as user is not active."

    .line 84
    .line 85
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    invoke-static {v5, v6}, Landroid/hardware/usb/IUsbManager$Stub;->restoreCallingIdentity(J)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :goto_0
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 101
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 102
    :catchall_1
    move-exception p0

    .line 103
    invoke-static {v5, v6}, Landroid/hardware/usb/IUsbManager$Stub;->restoreCallingIdentity(J)V

    .line 104
    .line 105
    .line 106
    throw p0

    .line 107
    :cond_2
    :goto_1
    return-object v2
.end method

.method public final openDevice(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 12

    .line 1
    const-string v0, "Cannot open "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    return-object v2

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 20
    .line 21
    .line 22
    move-result v8

    .line 23
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->clearCallingIdentity()J

    .line 32
    .line 33
    .line 34
    move-result-wide v9

    .line 35
    :try_start_0
    iget-object v11, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    :try_start_1
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mUserManager:Landroid/os/UserManager;

    .line 39
    .line 40
    iget v4, p0, Lcom/android/server/usb/UsbService;->mCurrentUserId:I

    .line 41
    .line 42
    invoke-virtual {v3, v1, v4}, Landroid/os/UserManager;->isSameProfileGroup(II)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    .line 51
    .line 52
    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbPermissionManager;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    move-object v4, p1

    .line 57
    move-object v6, p2

    .line 58
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/usb/UsbHostManager;->openDevice(Ljava/lang/String;Lcom/android/server/usb/UsbUserPermissionManager;Ljava/lang/String;II)Landroid/os/ParcelFileDescriptor;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    const-string p0, "UsbService"

    .line 66
    .line 67
    new-instance p2, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p1, " for user "

    .line 76
    .line 77
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string p1, " as user is not active."

    .line 84
    .line 85
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    :goto_0
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    invoke-static {v9, v10}, Landroid/hardware/usb/IUsbManager$Stub;->restoreCallingIdentity(J)V

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :goto_1
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 102
    :catchall_1
    move-exception p0

    .line 103
    invoke-static {v9, v10}, Landroid/hardware/usb/IUsbManager$Stub;->restoreCallingIdentity(J)V

    .line 104
    .line 105
    .line 106
    throw p0

    .line 107
    :cond_2
    :goto_2
    return-object v2
.end method

.method public final registerForDisplayPortEvents(Landroid/hardware/usb/IDisplayPortAltModeInfoListener;)Z
    .locals 3

    .line 1
    const-string/jumbo v0, "registerForDisplayPortEvents: listener must not be null."

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string v1, "android.permission.MANAGE_USB"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbPortManager;->registerForDisplayPortEvents(Landroid/hardware/usb/IDisplayPortAltModeInfoListener;)Z

    .line 24
    .line 25
    .line 26
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 28
    .line 29
    .line 30
    return p0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    .line 35
    .line 36
    const/4 p0, 0x0

    .line 37
    return p0

    .line 38
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    .line 40
    .line 41
    throw p0
.end method

.method public final removeAccessoryPackagesFromPreferenceDenied(Landroid/hardware/usb/UsbAccessory;[Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "packageNames"

    .line 5
    .line 6
    .line 7
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, [Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    const-string v1, "android.permission.MANAGE_USB"

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    .line 29
    .line 30
    invoke-virtual {p0, p3}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->removeAccessoryPackagesFromDenied(Landroid/hardware/usb/UsbAccessory;[Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 43
    .line 44
    .line 45
    throw p0
.end method

.method public final removeDevicePackagesFromPreferenceDenied(Landroid/hardware/usb/UsbDevice;[Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "packageNames"

    .line 5
    .line 6
    .line 7
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, [Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    const-string v1, "android.permission.MANAGE_USB"

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    .line 29
    .line 30
    invoke-virtual {p0, p3}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->removeDevicePackagesFromDenied(Landroid/hardware/usb/UsbDevice;[Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 43
    .line 44
    .line 45
    throw p0
.end method

.method public final requestAccessoryPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v5

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 6
    .line 7
    .line 8
    move-result v4

    .line 9
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    .line 15
    .line 16
    move-result-wide v6

    .line 17
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbPermissionManager;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    move-object v1, p1

    .line 24
    move-object v2, p2

    .line 25
    move-object v3, p3

    .line 26
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usb/UsbUserPermissionManager;->requestPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public final requestDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v5

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 6
    .line 7
    .line 8
    move-result v4

    .line 9
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    .line 15
    .line 16
    move-result-wide v6

    .line 17
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbPermissionManager;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    move-object v1, p1

    .line 24
    move-object v2, p2

    .line 25
    move-object v3, p3

    .line 26
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usb/UsbUserPermissionManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public final resetUsbGadget()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->resetUsbGadget_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 5
    .line 6
    const-string v1, "DeviceManager must not be null"

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const-string v2, "UsbDeviceManager"

    .line 21
    .line 22
    const-string/jumbo v3, "reset Usb Gadget"

    .line 23
    .line 24
    .line 25
    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 29
    .line 30
    const/16 v2, 0x13

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-virtual {p0, v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 42
    .line 43
    .line 44
    throw p0
.end method

.method public final resetUsbPort(Ljava/lang/String;ILandroid/hardware/usb/IUsbOperationInternal;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "resetUsbPort: portId must not be null. opId:"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string/jumbo v1, "resetUsbPort: callback must not be null. opId:"

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    const-string v1, "android.permission.MANAGE_USB"

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 50
    .line 51
    if-eqz p0, :cond_0

    .line 52
    .line 53
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usb/UsbPortManager;->resetUsbPort(Ljava/lang/String;ILandroid/hardware/usb/IUsbOperationInternal;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_1

    .line 59
    :cond_0
    const/4 p0, 0x1

    .line 60
    :try_start_1
    invoke-interface {p3, p0}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception p0

    .line 65
    :try_start_2
    const-string p1, "UsbService"

    .line 66
    .line 67
    const-string/jumbo p2, "resetUsbPort: Failed to call onOperationComplete"

    .line 68
    .line 69
    .line 70
    invoke-static {p1, p2, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    .line 72
    .line 73
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 78
    .line 79
    .line 80
    throw p0
.end method

.method public final restrictUsbHostInterface(ZLjava/lang/String;)I
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-ne v0, v1, :cond_2

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mHostRestrictor:Lcom/android/server/usb/UsbHostRestrictor;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    new-instance p0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string/jumbo v1, "restrictUsbHostInterface: enable="

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string v1, "UsbService"

    .line 30
    .line 31
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    sget-object p0, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    .line 35
    .line 36
    new-instance p0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string/jumbo v1, "restrictUsbHostInterface("

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, ", "

    .line 48
    .line 49
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v1, ")"

    .line 56
    .line 57
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const-string v1, "UsbHostRestrictor"

    .line 65
    .line 66
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->isSupportDexRestrict()Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-eqz p0, :cond_0

    .line 74
    .line 75
    :try_start_0
    sput-boolean p1, Lcom/android/server/usb/UsbHostRestrictor;->bRestrictHostAPI:Z

    .line 76
    .line 77
    sput-object p2, Lcom/android/server/usb/UsbHostRestrictor;->mStrAllowList:Ljava/lang/String;

    .line 78
    .line 79
    const-string p0, "/sys/class/usb_notify/usb_control/whitelist_for_mdm"

    .line 80
    .line 81
    invoke-static {p0, p2}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    const/4 v0, 0x0

    .line 85
    goto :goto_0

    .line 86
    :catch_0
    move-exception p0

    .line 87
    new-instance p1, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string/jumbo p2, "restrictUsbHostInterface() fail - "

    .line 90
    .line 91
    .line 92
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_0
    const-string/jumbo p0, "restrictUsbHostInterface() node error"

    .line 107
    .line 108
    .line 109
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    :cond_1
    :goto_0
    return v0

    .line 113
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 114
    .line 115
    const-string/jumbo p1, "no permission to call restrictUsbHostInterface()"

    .line 116
    .line 117
    .line 118
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw p0
.end method

.method public final semGetDataRoleStatus()I
    .locals 9

    .line 1
    const-string v0, "UsbService"

    .line 2
    .line 3
    const-string/jumbo v1, "semGetDataRoleStatus++"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 10
    .line 11
    const/4 v2, -0x1

    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    const-string/jumbo p0, "semGetDataRoleStatus--, manager is null"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return v2

    .line 21
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    const-string v3, "UsbPortManager"

    .line 25
    .line 26
    invoke-static {v3, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/server/usb/UsbPortManager;->getPorts()[Landroid/hardware/usb/UsbPort;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    array-length v4, v1

    .line 34
    const/4 v5, 0x0

    .line 35
    :goto_0
    if-ge v5, v4, :cond_2

    .line 36
    .line 37
    aget-object v6, v1, v5

    .line 38
    .line 39
    invoke-virtual {v6}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-virtual {p0, v6}, Lcom/android/server/usb/UsbPortManager;->getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    new-instance v7, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string/jumbo v8, "semGetDataRoleStatus status of ports["

    .line 50
    .line 51
    .line 52
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v8, "] = "

    .line 59
    .line 60
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    invoke-static {v3, v7}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    if-eqz v6, :cond_1

    .line 74
    .line 75
    invoke-virtual {v6}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    if-eqz v7, :cond_1

    .line 80
    .line 81
    invoke-virtual {v6}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    new-instance p0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string/jumbo v1, "semGetDataRoleStatus status.isConnected() = "

    .line 88
    .line 89
    .line 90
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v6}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-static {v3, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_2
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string/jumbo v1, "semGetDataRoleStatus-- with ret["

    .line 114
    .line 115
    .line 116
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v1, "]"

    .line 123
    .line 124
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-static {v3, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    new-instance p0, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    const-string/jumbo v1, "semGetDataRoleStatus ret="

    .line 137
    .line 138
    .line 139
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    return v2
.end method

.method public final semGetPowerRoleStatus()I
    .locals 9

    .line 1
    const-string v0, "UsbService"

    .line 2
    .line 3
    const-string/jumbo v1, "semGetPowerRoleStatus++"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 10
    .line 11
    const/4 v2, -0x1

    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    const-string/jumbo p0, "semGetPowerRoleStatus--, manager is null"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return v2

    .line 21
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    const-string v3, "UsbPortManager"

    .line 25
    .line 26
    invoke-static {v3, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/server/usb/UsbPortManager;->getPorts()[Landroid/hardware/usb/UsbPort;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    array-length v4, v1

    .line 34
    const/4 v5, 0x0

    .line 35
    :goto_0
    if-ge v5, v4, :cond_2

    .line 36
    .line 37
    aget-object v6, v1, v5

    .line 38
    .line 39
    invoke-virtual {v6}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-virtual {p0, v6}, Lcom/android/server/usb/UsbPortManager;->getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    new-instance v7, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string/jumbo v8, "semGetPowerRoleStatus status of ports["

    .line 50
    .line 51
    .line 52
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v8, "] = "

    .line 59
    .line 60
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    invoke-static {v3, v7}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    if-eqz v6, :cond_1

    .line 74
    .line 75
    invoke-virtual {v6}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    if-eqz v7, :cond_1

    .line 80
    .line 81
    invoke-virtual {v6}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    new-instance p0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string/jumbo v1, "semGetPowerRoleStatus status.isConnected() = "

    .line 88
    .line 89
    .line 90
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v6}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-static {v3, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_2
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string/jumbo v1, "semGetPowerRoleStatus-- with ret["

    .line 114
    .line 115
    .line 116
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v1, "]"

    .line 123
    .line 124
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-static {v3, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    new-instance p0, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    const-string/jumbo v1, "semGetPowerRoleStatus ret="

    .line 137
    .line 138
    .line 139
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    return v2
.end method

.method public final semGrantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbService;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final semSetDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usb/UsbService;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final semSetMode(I)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const-string v3, "UsbService"

    .line 7
    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string/jumbo v5, "semSetMode++, not imlpemtentd yet mode "

    .line 11
    .line 12
    .line 13
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object v3, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 27
    .line 28
    if-eqz v3, :cond_1e

    .line 29
    .line 30
    iget-object v3, v0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 31
    .line 32
    if-nez v3, :cond_0

    .line 33
    .line 34
    goto/16 :goto_f

    .line 35
    .line 36
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    iget-object v4, v0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    new-instance v5, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v6, "isAllowedPackage: "

    .line 49
    .line 50
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    const-string v6, "UsbService"

    .line 65
    .line 66
    invoke-static {v6, v5}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    const-string v5, "android"

    .line 70
    .line 71
    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    invoke-virtual {v4, v5, v7}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    const/4 v5, 0x0

    .line 80
    if-nez v4, :cond_1

    .line 81
    .line 82
    move v4, v2

    .line 83
    goto :goto_0

    .line 84
    :cond_1
    move v4, v5

    .line 85
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v8, " ret "

    .line 88
    .line 89
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    invoke-static {v6, v7}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    const/16 v7, 0x3e8

    .line 103
    .line 104
    if-ne v3, v7, :cond_2

    .line 105
    .line 106
    move v4, v2

    .line 107
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string v7, "isAllowedPackage, ret "

    .line 110
    .line 111
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-static {v6, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    if-nez v4, :cond_3

    .line 125
    .line 126
    const-string v0, "UsbService"

    .line 127
    .line 128
    const-string/jumbo v1, "semSetMode--, no permissions"

    .line 129
    .line 130
    .line 131
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_3
    new-instance v3, Lcom/android/server/usb/SemUsbBackend;

    .line 136
    .line 137
    iget-object v4, v0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    .line 138
    .line 139
    iget-object v6, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 140
    .line 141
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 142
    .line 143
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 144
    .line 145
    .line 146
    new-instance v7, Landroid/content/IntentFilter;

    .line 147
    .line 148
    const-string v8, "android.hardware.usb.action.USB_STATE"

    .line 149
    .line 150
    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    const/4 v8, 0x0

    .line 154
    invoke-virtual {v4, v8, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 155
    .line 156
    .line 157
    move-result-object v7

    .line 158
    const-string/jumbo v9, "unlocked"

    .line 159
    .line 160
    .line 161
    invoke-virtual {v7, v9, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 162
    .line 163
    .line 164
    move-result v7

    .line 165
    iput-boolean v7, v3, Lcom/android/server/usb/SemUsbBackend;->mIsUnlocked:Z

    .line 166
    .line 167
    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    const-string/jumbo v7, "no_usb_file_transfer"

    .line 172
    .line 173
    .line 174
    invoke-virtual {v4, v7}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    .line 175
    .line 176
    .line 177
    iput-object v6, v3, Lcom/android/server/usb/SemUsbBackend;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 178
    .line 179
    iput-object v0, v3, Lcom/android/server/usb/SemUsbBackend;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 180
    .line 181
    invoke-virtual {v3}, Lcom/android/server/usb/SemUsbBackend;->updateUsbPort()V

    .line 182
    .line 183
    .line 184
    const-string v4, "UsbService"

    .line 185
    .line 186
    new-instance v7, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    const-string/jumbo v9, "semSetMode: backend "

    .line 189
    .line 190
    .line 191
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v7

    .line 201
    invoke-static {v4, v7}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3}, Lcom/android/server/usb/SemUsbBackend;->updateUsbPort()V

    .line 205
    .line 206
    .line 207
    iget-object v4, v3, Lcom/android/server/usb/SemUsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    .line 208
    .line 209
    const-string v7, "SemUsbBackend"

    .line 210
    .line 211
    if-eqz v4, :cond_4

    .line 212
    .line 213
    iget-object v4, v3, Lcom/android/server/usb/SemUsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 214
    .line 215
    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    .line 216
    .line 217
    .line 218
    move-result v4

    .line 219
    if-ne v4, v2, :cond_4

    .line 220
    .line 221
    const-string v4, "USB connection getCurrentMode : 1"

    .line 222
    .line 223
    invoke-static {v7, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    move v4, v2

    .line 227
    goto :goto_1

    .line 228
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    const-string v9, "USB connection getCurrentMode : "

    .line 231
    .line 232
    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v3}, Lcom/android/server/usb/SemUsbBackend;->getUsbDataMode()I

    .line 236
    .line 237
    .line 238
    move-result v9

    .line 239
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    invoke-static {v7, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .line 248
    .line 249
    invoke-virtual {v3}, Lcom/android/server/usb/SemUsbBackend;->getUsbDataMode()I

    .line 250
    .line 251
    .line 252
    move-result v4

    .line 253
    :goto_1
    const-string v7, "UsbService"

    .line 254
    .line 255
    new-instance v9, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    const-string/jumbo v10, "semSetMode: currentUsbMode "

    .line 258
    .line 259
    .line 260
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v4

    .line 270
    invoke-static {v7, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .line 272
    .line 273
    if-eqz v0, :cond_5

    .line 274
    .line 275
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 276
    .line 277
    const-string v0, "UsbDeviceManager"

    .line 278
    .line 279
    const-string/jumbo v4, "rmSetNextUsbModeToDefault"

    .line 280
    .line 281
    .line 282
    invoke-static {v0, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .line 284
    .line 285
    sput-boolean v5, Lcom/android/server/usb/UsbDeviceManager;->mSetNextUsbModeToDefault:Z

    .line 286
    .line 287
    goto :goto_2

    .line 288
    :cond_5
    const-string v0, "SemUsbBackend"

    .line 289
    .line 290
    const-string/jumbo v4, "setMode : mDeviceManager is null"

    .line 291
    .line 292
    .line 293
    invoke-static {v0, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    .line 295
    .line 296
    :goto_2
    iget-object v0, v3, Lcom/android/server/usb/SemUsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    .line 297
    .line 298
    const/4 v7, 0x6

    .line 299
    if-eqz v0, :cond_15

    .line 300
    .line 301
    and-int/lit8 v0, v1, 0x1

    .line 302
    .line 303
    if-ne v0, v2, :cond_6

    .line 304
    .line 305
    move v5, v2

    .line 306
    goto :goto_3

    .line 307
    :cond_6
    const/4 v5, 0x2

    .line 308
    :goto_3
    and-int/lit8 v0, v1, 0xe

    .line 309
    .line 310
    if-nez v0, :cond_7

    .line 311
    .line 312
    iget-object v0, v3, Lcom/android/server/usb/SemUsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 313
    .line 314
    invoke-virtual {v0, v5, v2}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    if-eqz v0, :cond_7

    .line 319
    .line 320
    move v10, v2

    .line 321
    goto :goto_4

    .line 322
    :cond_7
    const/4 v10, 0x2

    .line 323
    :goto_4
    const-string v0, "SemUsbBackend"

    .line 324
    .line 325
    new-instance v11, Ljava/lang/StringBuilder;

    .line 326
    .line 327
    const-string/jumbo v12, "setMode : powerRole - "

    .line 328
    .line 329
    .line 330
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    const-string v12, " /dataRole - "

    .line 337
    .line 338
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v11

    .line 348
    invoke-static {v0, v11}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    .line 350
    .line 351
    iget-object v0, v3, Lcom/android/server/usb/SemUsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    .line 352
    .line 353
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v11

    .line 357
    const-string v12, "Failed to set the USB port data role: portId="

    .line 358
    .line 359
    const-string v13, "Failed to set the USB port mode: portId="

    .line 360
    .line 361
    const-string v0, "Trying to set the USB port mode: portId="

    .line 362
    .line 363
    const-string v14, "Setting USB port mode and role: portId="

    .line 364
    .line 365
    const-string v15, "Found mismatch in supported USB role combinations while attempting to change role: "

    .line 366
    .line 367
    const-string v8, "Attempted to set USB port into unsupported role combination: portId="

    .line 368
    .line 369
    iget-object v4, v6, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    .line 370
    .line 371
    monitor-enter v4

    .line 372
    :try_start_0
    iget-object v9, v6, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    .line 373
    .line 374
    invoke-virtual {v9, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v9

    .line 378
    check-cast v9, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 379
    .line 380
    if-nez v9, :cond_8

    .line 381
    .line 382
    monitor-exit v4

    .line 383
    :goto_5
    move-object/from16 v16, v3

    .line 384
    .line 385
    goto/16 :goto_a

    .line 386
    .line 387
    :catchall_0
    move-exception v0

    .line 388
    goto/16 :goto_b

    .line 389
    .line 390
    :cond_8
    iget-object v2, v9, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 391
    .line 392
    invoke-virtual {v2, v5, v10}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    .line 393
    .line 394
    .line 395
    move-result v2

    .line 396
    if-nez v2, :cond_9

    .line 397
    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    .line 399
    .line 400
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    const-string v2, ", newPowerRole="

    .line 407
    .line 408
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    invoke-static {v5}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v2

    .line 415
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    const-string v2, ", newDataRole="

    .line 419
    .line 420
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-static {v10}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    const-string v2, "UsbPortManager"

    .line 435
    .line 436
    invoke-static {v7, v2, v0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 437
    .line 438
    .line 439
    monitor-exit v4

    .line 440
    goto :goto_5

    .line 441
    :cond_9
    iget-object v2, v9, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 442
    .line 443
    invoke-virtual {v2}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    .line 444
    .line 445
    .line 446
    move-result v2

    .line 447
    iget-object v8, v9, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 448
    .line 449
    invoke-virtual {v8}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    .line 450
    .line 451
    .line 452
    move-result v8

    .line 453
    if-ne v2, v10, :cond_a

    .line 454
    .line 455
    if-ne v8, v5, :cond_a

    .line 456
    .line 457
    monitor-exit v4

    .line 458
    goto :goto_5

    .line 459
    :cond_a
    iget-boolean v7, v9, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeMode:Z

    .line 460
    .line 461
    move-object/from16 v16, v3

    .line 462
    .line 463
    iget-boolean v3, v9, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangePowerRole:Z

    .line 464
    .line 465
    iget-boolean v1, v9, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeDataRole:Z

    .line 466
    .line 467
    move-object/from16 v17, v12

    .line 468
    .line 469
    iget-object v12, v9, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 470
    .line 471
    invoke-virtual {v12}, Landroid/hardware/usb/UsbPortStatus;->getCurrentMode()I

    .line 472
    .line 473
    .line 474
    move-result v12

    .line 475
    if-nez v3, :cond_b

    .line 476
    .line 477
    if-ne v8, v5, :cond_c

    .line 478
    .line 479
    :cond_b
    if-nez v1, :cond_f

    .line 480
    .line 481
    if-eq v2, v10, :cond_f

    .line 482
    .line 483
    :cond_c
    if-eqz v7, :cond_d

    .line 484
    .line 485
    const/4 v1, 0x1

    .line 486
    if-ne v5, v1, :cond_d

    .line 487
    .line 488
    if-ne v10, v1, :cond_d

    .line 489
    .line 490
    const/4 v1, 0x2

    .line 491
    goto :goto_6

    .line 492
    :cond_d
    if-eqz v7, :cond_e

    .line 493
    .line 494
    const/4 v1, 0x2

    .line 495
    if-ne v5, v1, :cond_e

    .line 496
    .line 497
    if-ne v10, v1, :cond_e

    .line 498
    .line 499
    const/4 v1, 0x1

    .line 500
    goto :goto_6

    .line 501
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 502
    .line 503
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    const-string v1, ", newPowerRole="

    .line 510
    .line 511
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    invoke-static {v5}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v1

    .line 518
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    const-string v1, ", newDataRole="

    .line 522
    .line 523
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    invoke-static {v10}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v1

    .line 530
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    const-string v1, "UsbPortManager"

    .line 538
    .line 539
    const/4 v2, 0x6

    .line 540
    invoke-static {v2, v1, v0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 541
    .line 542
    .line 543
    monitor-exit v4

    .line 544
    goto/16 :goto_a

    .line 545
    .line 546
    :cond_f
    move v1, v12

    .line 547
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    .line 548
    .line 549
    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    const-string v7, ", currentMode="

    .line 556
    .line 557
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    invoke-static {v12}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v7

    .line 564
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    const-string v7, ", currentPowerRole="

    .line 568
    .line 569
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    invoke-static {v8}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v7

    .line 576
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    .line 578
    .line 579
    const-string v7, ", currentDataRole="

    .line 580
    .line 581
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    .line 583
    .line 584
    invoke-static {v2}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v7

    .line 588
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    .line 590
    .line 591
    const-string v7, ", newMode="

    .line 592
    .line 593
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    .line 595
    .line 596
    invoke-static {v1}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v7

    .line 600
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    const-string v7, ", newPowerRole="

    .line 604
    .line 605
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    invoke-static {v5}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v7

    .line 612
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    const-string v7, ", newDataRole="

    .line 616
    .line 617
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    invoke-static {v10}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v7

    .line 624
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    .line 626
    .line 627
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v3

    .line 631
    const-string v7, "UsbPortManager"

    .line 632
    .line 633
    const/4 v8, 0x4

    .line 634
    invoke-static {v8, v7, v3}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 635
    .line 636
    .line 637
    iget-object v3, v6, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    .line 638
    .line 639
    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    .line 641
    .line 642
    move-result-object v3

    .line 643
    check-cast v3, Lcom/android/server/usb/hal/port/RawPortInfo;

    .line 644
    .line 645
    if-eqz v3, :cond_10

    .line 646
    .line 647
    iput v1, v3, Lcom/android/server/usb/hal/port/RawPortInfo;->currentMode:I

    .line 648
    .line 649
    iput v5, v3, Lcom/android/server/usb/hal/port/RawPortInfo;->currentPowerRole:I

    .line 650
    .line 651
    iput v10, v3, Lcom/android/server/usb/hal/port/RawPortInfo;->currentDataRole:I

    .line 652
    .line 653
    const/4 v0, 0x0

    .line 654
    invoke-virtual {v6, v0, v0}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    .line 655
    .line 656
    .line 657
    goto/16 :goto_9

    .line 658
    .line 659
    :cond_10
    iget-object v3, v6, Lcom/android/server/usb/UsbPortManager;->mUsbPortHal:Lcom/android/server/usb/hal/port/UsbPortHal;

    .line 660
    .line 661
    if-eqz v3, :cond_14

    .line 662
    .line 663
    const-wide/16 v7, 0x1

    .line 664
    .line 665
    if-eq v12, v1, :cond_12

    .line 666
    .line 667
    new-instance v2, Ljava/lang/StringBuilder;

    .line 668
    .line 669
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 670
    .line 671
    .line 672
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    .line 674
    .line 675
    const-string v0, ", newMode="

    .line 676
    .line 677
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    .line 679
    .line 680
    invoke-static {v1}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v0

    .line 684
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    .line 686
    .line 687
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 688
    .line 689
    .line 690
    move-result-object v0

    .line 691
    const-string v2, "UsbPortManager"

    .line 692
    .line 693
    const/4 v3, 0x6

    .line 694
    invoke-static {v3, v2, v0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    .line 696
    .line 697
    :try_start_1
    iget-object v0, v6, Lcom/android/server/usb/UsbPortManager;->mUsbPortHal:Lcom/android/server/usb/hal/port/UsbPortHal;

    .line 698
    .line 699
    const/4 v2, 0x1

    .line 700
    if-ne v1, v2, :cond_11

    .line 701
    .line 702
    const/4 v2, 0x1

    .line 703
    goto :goto_7

    .line 704
    :cond_11
    const/4 v2, 0x2

    .line 705
    :goto_7
    iget-wide v14, v6, Lcom/android/server/usb/UsbPortManager;->mTransactionId:J

    .line 706
    .line 707
    add-long/2addr v14, v7

    .line 708
    iput-wide v14, v6, Lcom/android/server/usb/UsbPortManager;->mTransactionId:J

    .line 709
    .line 710
    invoke-interface {v0, v2, v11, v14, v15}, Lcom/android/server/usb/hal/port/UsbPortHal;->switchMode(ILjava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 711
    .line 712
    .line 713
    goto :goto_9

    .line 714
    :catch_0
    move-exception v0

    .line 715
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 716
    .line 717
    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 718
    .line 719
    .line 720
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    .line 722
    .line 723
    const-string v3, ", newMode="

    .line 724
    .line 725
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    .line 727
    .line 728
    invoke-static {v1}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    .line 729
    .line 730
    .line 731
    move-result-object v1

    .line 732
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    .line 734
    .line 735
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 736
    .line 737
    .line 738
    move-result-object v1

    .line 739
    const-string v2, "UsbPortManager"

    .line 740
    .line 741
    invoke-static {v2, v1, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 742
    .line 743
    .line 744
    goto :goto_9

    .line 745
    :cond_12
    if-eq v2, v10, :cond_14

    .line 746
    .line 747
    const/4 v1, 0x2

    .line 748
    if-ne v10, v1, :cond_13

    .line 749
    .line 750
    const/4 v1, 0x2

    .line 751
    goto :goto_8

    .line 752
    :cond_13
    const/4 v1, 0x1

    .line 753
    :goto_8
    :try_start_3
    iget-wide v12, v6, Lcom/android/server/usb/UsbPortManager;->mTransactionId:J

    .line 754
    .line 755
    add-long/2addr v12, v7

    .line 756
    iput-wide v12, v6, Lcom/android/server/usb/UsbPortManager;->mTransactionId:J

    .line 757
    .line 758
    invoke-interface {v3, v1, v11, v12, v13}, Lcom/android/server/usb/hal/port/UsbPortHal;->switchDataRole(ILjava/lang/String;J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 759
    .line 760
    .line 761
    goto :goto_9

    .line 762
    :catch_1
    move-exception v0

    .line 763
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 764
    .line 765
    move-object/from16 v2, v17

    .line 766
    .line 767
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 768
    .line 769
    .line 770
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    .line 772
    .line 773
    const-string v2, ", newDataRole="

    .line 774
    .line 775
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    .line 777
    .line 778
    invoke-static {v10}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    .line 779
    .line 780
    .line 781
    move-result-object v2

    .line 782
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    .line 784
    .line 785
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 786
    .line 787
    .line 788
    move-result-object v1

    .line 789
    const-string v2, "UsbPortManager"

    .line 790
    .line 791
    invoke-static {v2, v1, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 792
    .line 793
    .line 794
    :cond_14
    :goto_9
    monitor-exit v4

    .line 795
    :goto_a
    const/4 v1, 0x1

    .line 796
    goto :goto_c

    .line 797
    :goto_b
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 798
    throw v0

    .line 799
    :cond_15
    move-object/from16 v16, v3

    .line 800
    .line 801
    move v1, v2

    .line 802
    move v10, v5

    .line 803
    :goto_c
    if-ne v5, v1, :cond_16

    .line 804
    .line 805
    if-eq v10, v1, :cond_17

    .line 806
    .line 807
    :cond_16
    move/from16 v2, p1

    .line 808
    .line 809
    goto :goto_d

    .line 810
    :cond_17
    const-string v0, "SemUsbBackend"

    .line 811
    .line 812
    new-instance v1, Ljava/lang/StringBuilder;

    .line 813
    .line 814
    const-string v2, "USB connection setMode : "

    .line 815
    .line 816
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 817
    .line 818
    .line 819
    move/from16 v2, p1

    .line 820
    .line 821
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 822
    .line 823
    .line 824
    const-string v2, " - skip!!"

    .line 825
    .line 826
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    .line 828
    .line 829
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 830
    .line 831
    .line 832
    move-result-object v1

    .line 833
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    .line 835
    .line 836
    goto/16 :goto_e

    .line 837
    .line 838
    :goto_d
    const-string v0, "SemUsbBackend"

    .line 839
    .line 840
    new-instance v1, Ljava/lang/StringBuilder;

    .line 841
    .line 842
    const-string v3, "USB connection setMode : "

    .line 843
    .line 844
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 845
    .line 846
    .line 847
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 848
    .line 849
    .line 850
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 851
    .line 852
    .line 853
    move-result-object v1

    .line 854
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    .line 856
    .line 857
    and-int/lit8 v0, v2, 0xe

    .line 858
    .line 859
    sget-object v1, Lcom/android/server/usb/SemUsbBackend;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 860
    .line 861
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 862
    .line 863
    .line 864
    move-result v1

    .line 865
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 866
    .line 867
    .line 868
    move-result v2

    .line 869
    add-int/2addr v2, v1

    .line 870
    new-instance v1, Ljava/lang/StringBuilder;

    .line 871
    .line 872
    const-string v3, "USB connection setUsbFunction : "

    .line 873
    .line 874
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 875
    .line 876
    .line 877
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 878
    .line 879
    .line 880
    const-string v3, ", operationId : "

    .line 881
    .line 882
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    .line 884
    .line 885
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 886
    .line 887
    .line 888
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 889
    .line 890
    .line 891
    move-result-object v1

    .line 892
    const-string v3, "SemUsbBackend"

    .line 893
    .line 894
    invoke-static {v3, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    .line 896
    .line 897
    move-object/from16 v1, v16

    .line 898
    .line 899
    iget-object v1, v1, Lcom/android/server/usb/SemUsbBackend;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 900
    .line 901
    if-eqz v1, :cond_1d

    .line 902
    .line 903
    const/4 v4, 0x2

    .line 904
    if-eq v0, v4, :cond_1c

    .line 905
    .line 906
    const/4 v4, 0x4

    .line 907
    if-eq v0, v4, :cond_1b

    .line 908
    .line 909
    const/4 v4, 0x6

    .line 910
    if-eq v0, v4, :cond_1a

    .line 911
    .line 912
    const/16 v4, 0x8

    .line 913
    .line 914
    if-eq v0, v4, :cond_19

    .line 915
    .line 916
    const/16 v4, 0xa

    .line 917
    .line 918
    if-eq v0, v4, :cond_18

    .line 919
    .line 920
    const-string v0, "USB connection setUsbFunction :  + UsbManager.USB_FUNCTION_SEC_CHARGING"

    .line 921
    .line 922
    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    .line 924
    .line 925
    const-string/jumbo v0, "sec_charging"

    .line 926
    .line 927
    .line 928
    invoke-static {v0}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    .line 929
    .line 930
    .line 931
    move-result-wide v3

    .line 932
    invoke-virtual {v1, v3, v4, v2}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(JI)V

    .line 933
    .line 934
    .line 935
    goto :goto_e

    .line 936
    :cond_18
    const-string v0, "USB connection setUsbFunction :  + UsbManager.USB_FUNCTION_MTP_GADGET"

    .line 937
    .line 938
    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    .line 940
    .line 941
    const-string/jumbo v0, "mtp,conn_gadget"

    .line 942
    .line 943
    .line 944
    invoke-static {v0}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    .line 945
    .line 946
    .line 947
    move-result-wide v3

    .line 948
    invoke-virtual {v1, v3, v4, v2}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(JI)V

    .line 949
    .line 950
    .line 951
    goto :goto_e

    .line 952
    :cond_19
    const-string v0, "USB connection setUsbFunction :  + UsbManager.USB_FUNCTION_MASS_STORAGE"

    .line 953
    .line 954
    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    .line 956
    .line 957
    const-string/jumbo v0, "mass_storage"

    .line 958
    .line 959
    .line 960
    invoke-static {v0}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    .line 961
    .line 962
    .line 963
    move-result-wide v3

    .line 964
    invoke-virtual {v1, v3, v4, v2}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(JI)V

    .line 965
    .line 966
    .line 967
    goto :goto_e

    .line 968
    :cond_1a
    const-string v0, "USB connection setUsbFunction :  + UsbManager.USB_FUNCTION_MIDI"

    .line 969
    .line 970
    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    .line 972
    .line 973
    const-string/jumbo v0, "midi"

    .line 974
    .line 975
    .line 976
    invoke-static {v0}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    .line 977
    .line 978
    .line 979
    move-result-wide v3

    .line 980
    invoke-virtual {v1, v3, v4, v2}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(JI)V

    .line 981
    .line 982
    .line 983
    goto :goto_e

    .line 984
    :cond_1b
    const-string v0, "USB connection setUsbFunction :  + UsbManager.USB_FUNCTION_PTP"

    .line 985
    .line 986
    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    .line 988
    .line 989
    const-string/jumbo v0, "ptp"

    .line 990
    .line 991
    .line 992
    invoke-static {v0}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    .line 993
    .line 994
    .line 995
    move-result-wide v3

    .line 996
    invoke-virtual {v1, v3, v4, v2}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(JI)V

    .line 997
    .line 998
    .line 999
    goto :goto_e

    .line 1000
    :cond_1c
    const-string v0, "USB connection setUsbFunction : + UsbManager.USB_FUNCTION_MTP"

    .line 1001
    .line 1002
    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    .line 1004
    .line 1005
    const-string/jumbo v0, "mtp"

    .line 1006
    .line 1007
    .line 1008
    invoke-static {v0}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    .line 1009
    .line 1010
    .line 1011
    move-result-wide v3

    .line 1012
    invoke-virtual {v1, v3, v4, v2}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(JI)V

    .line 1013
    .line 1014
    .line 1015
    goto :goto_e

    .line 1016
    :cond_1d
    const-string/jumbo v0, "setUsbFunction : mDeviceManager is null"

    .line 1017
    .line 1018
    .line 1019
    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    .line 1021
    .line 1022
    :goto_e
    const-string v0, "UsbService"

    .line 1023
    .line 1024
    const-string/jumbo v1, "semSetMode--"

    .line 1025
    .line 1026
    .line 1027
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    .line 1029
    .line 1030
    return-void

    .line 1031
    :cond_1e
    :goto_f
    const-string v0, "UsbService"

    .line 1032
    .line 1033
    const-string/jumbo v1, "semSetMode--, managers are null"

    .line 1034
    .line 1035
    .line 1036
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    .line 1038
    .line 1039
    return-void
.end method

.method public final setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const-string v1, "android.permission.MANAGE_USB"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    .line 21
    .line 22
    invoke-virtual {p0, p3}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public final setAccessoryPersistentPermission(Landroid/hardware/usb/UsbAccessory;ILandroid/os/UserHandle;Z)V
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string v1, "android.permission.MANAGE_USB"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 25
    .line 26
    .line 27
    move-result p3

    .line 28
    invoke-virtual {p0, p3}, Lcom/android/server/usb/UsbPermissionManager;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/usb/UsbUserPermissionManager;->setAccessoryPersistentPermission(Landroid/hardware/usb/UsbAccessory;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 41
    .line 42
    .line 43
    throw p0
.end method

.method public final setCurrentFunction(Ljava/lang/String;ZI)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usb/UsbService;->setCurrentFunctions(JI)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setCurrentFunctions(JI)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->setCurrentFunctions_enforcePermission()V

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p2}, Landroid/hardware/usb/UsbManager;->areSettableFunctions(J)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v0, v1

    .line 28
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    const-string v0, "UsbDeviceManager"

    .line 37
    .line 38
    const-string/jumbo v2, "rmSetNextUsbModeToDefault"

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    sput-boolean v1, Lcom/android/server/usb/UsbDeviceManager;->mSetNextUsbModeToDefault:Z

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 47
    .line 48
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(JI)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const-string v1, "android.permission.MANAGE_USB"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    .line 21
    .line 22
    invoke-virtual {p0, p3}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public final setDevicePersistentPermission(Landroid/hardware/usb/UsbDevice;ILandroid/os/UserHandle;Z)V
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string v1, "android.permission.MANAGE_USB"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 25
    .line 26
    .line 27
    move-result p3

    .line 28
    invoke-virtual {p0, p3}, Lcom/android/server/usb/UsbPermissionManager;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/usb/UsbUserPermissionManager;->setDevicePersistentPermission(Landroid/hardware/usb/UsbDevice;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 41
    .line 42
    .line 43
    throw p0
.end method

.method public final setPortRoles(Ljava/lang/String;II)V
    .locals 8

    .line 1
    const-string/jumbo v0, "portId must not be null"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-static {p2, p3}, Landroid/hardware/usb/UsbPort;->checkRoles(II)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    const-string v1, "android.permission.MANAGE_USB"

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    new-instance v7, Lcom/android/server/usb/UsbService$2;

    .line 27
    .line 28
    invoke-direct {v7, p0}, Lcom/android/server/usb/UsbService$2;-><init>(Lcom/android/server/usb/UsbService;)V

    .line 29
    .line 30
    .line 31
    const/4 v6, 0x0

    .line 32
    move-object v3, p1

    .line 33
    move v4, p2

    .line 34
    move v5, p3

    .line 35
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usb/UsbPortManager;->setPortRoles(Ljava/lang/String;IILcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usb/UsbService$2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    .line 47
    .line 48
    throw p0
.end method

.method public final setScreenUnlockedFunctions(J)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->setScreenUnlockedFunctions_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p2}, Landroid/hardware/usb/UsbManager;->areSettableFunctions(J)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string/jumbo v1, "setScreenUnlockedFunctions("

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p1, p2}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, ")"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "UsbDeviceManager"

    .line 51
    .line 52
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->getPersistProp()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const-string/jumbo v2, "none"

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-string v2, "adb"

    .line 67
    .line 68
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_1

    .line 73
    .line 74
    const-wide/16 v2, 0x0

    .line 75
    .line 76
    cmp-long v0, p1, v2

    .line 77
    .line 78
    if-nez v0, :cond_1

    .line 79
    .line 80
    const-string/jumbo p0, "setScreenUnlockedFunctions keep the current state"

    .line 81
    .line 82
    .line 83
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 92
    .line 93
    const/16 p2, 0xc

    .line 94
    .line 95
    invoke-virtual {p0, p2, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(ILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    :goto_1
    return-void
.end method

.method public final setUsbDeviceConnectionHandler(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->setUsbDeviceConnectionHandler_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget v1, p0, Lcom/android/server/usb/UsbService;->mCurrentUserId:I

    .line 8
    .line 9
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ne v1, v2, :cond_1

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mHandlerLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    :try_start_1
    iput-object p1, p0, Lcom/android/server/usb/UsbHostManager;->mUsbDeviceConnectionHandler:Landroid/content/ComponentName;

    .line 23
    .line 24
    monitor-exit v1

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :try_start_2
    throw p0

    .line 29
    :cond_0
    :goto_0
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :catchall_1
    move-exception p0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    const-string p1, "Only the current user can register a usb connection handler"

    .line 36
    .line 37
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p0

    .line 41
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 42
    throw p0
.end method

.method public final setUsbHiddenMenuState(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.MANAGE_USB"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 10
    .line 11
    const-string v1, "UsbService"

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string/jumbo v2, "setUsbHiddenMenuState: enable="

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    sput-boolean p1, Lcom/android/server/usb/UsbDeviceManager;->mEnableUsbHiddenMenu:Z

    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    const-string p0, "UsbService mDeviceManager is NULL"

    .line 42
    .line 43
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final shouldUpdateUsbSignaling(ILjava/lang/String;Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mUsbDisableRequesters:Landroid/util/ArrayMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mUsbDisableRequesters:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mUsbDisableRequesters:Landroid/util/ArrayMap;

    .line 13
    .line 14
    new-instance v2, Landroid/util/ArraySet;

    .line 15
    .line 16
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mUsbDisableRequesters:Landroid/util/ArrayMap;

    .line 26
    .line 27
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Landroid/util/ArraySet;

    .line 32
    .line 33
    if-eqz p3, :cond_1

    .line 34
    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    monitor-exit v0

    .line 47
    return p0

    .line 48
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    monitor-exit v0

    .line 56
    const/4 p0, 0x1

    .line 57
    return p0

    .line 58
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p0
.end method

.method public final unregisterForDisplayPortEvents(Landroid/hardware/usb/IDisplayPortAltModeInfoListener;)V
    .locals 5

    .line 1
    const-string/jumbo v0, "unregisterForDisplayPortEvents: listener must not be null."

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string v1, "android.permission.MANAGE_USB"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 20
    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mDisplayPortListenerLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    :try_start_1
    iget-object v3, p0, Lcom/android/server/usb/UsbPortManager;->mDisplayPortListeners:Landroid/util/ArrayMap;

    .line 27
    .line 28
    invoke-interface {p1}, Landroid/hardware/usb/IDisplayPortAltModeInfoListener;->asBinder()Landroid/os/IBinder;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    invoke-interface {p1}, Landroid/hardware/usb/IDisplayPortAltModeInfoListener;->asBinder()Landroid/os/IBinder;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-interface {p1, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    :goto_0
    monitor-exit v2

    .line 50
    goto :goto_2

    .line 51
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 53
    :cond_1
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :catchall_1
    move-exception p0

    .line 58
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 59
    .line 60
    .line 61
    throw p0
.end method
