.class Lcom/android/server/companion/virtual/InputController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sNextPhysId:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public final mAttributionSource:Landroid/content/AttributionSource;

.field public final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public final mHandler:Landroid/os/Handler;

.field public final mInputDeviceDescriptors:Landroid/util/ArrayMap;

.field public final mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

.field public final mLock:Ljava/lang/Object;

.field public final mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

.field public final mThreadVerifier:Lcom/android/server/companion/virtual/InputController$DeviceCreationThreadVerifier;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static bridge synthetic -$$Nest$smnativeCloseUinput(J)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/server/companion/virtual/InputController;->nativeCloseUinput(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic -$$Nest$smnativeOpenUinputDpad(IILjava/lang/String;Ljava/lang/String;)J
    .locals 0

    .line 1
    invoke-static {p2, p0, p1, p3}, Lcom/android/server/companion/virtual/InputController;->nativeOpenUinputDpad(Ljava/lang/String;IILjava/lang/String;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$smnativeOpenUinputKeyboard(IILjava/lang/String;Ljava/lang/String;)J
    .locals 0

    .line 1
    invoke-static {p2, p0, p1, p3}, Lcom/android/server/companion/virtual/InputController;->nativeOpenUinputKeyboard(Ljava/lang/String;IILjava/lang/String;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$smnativeOpenUinputMouse(IILjava/lang/String;Ljava/lang/String;)J
    .locals 0

    .line 1
    invoke-static {p2, p0, p1, p3}, Lcom/android/server/companion/virtual/InputController;->nativeOpenUinputMouse(Ljava/lang/String;IILjava/lang/String;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$smnativeOpenUinputStylus(IIILjava/lang/String;Ljava/lang/String;I)J
    .locals 6

    .line 1
    move-object v0, p3

    .line 2
    move v1, p0

    .line 3
    move v2, p1

    .line 4
    move-object v3, p4

    .line 5
    move v4, p2

    .line 6
    move v5, p5

    .line 7
    invoke-static/range {v0 .. v5}, Lcom/android/server/companion/virtual/InputController;->nativeOpenUinputStylus(Ljava/lang/String;IILjava/lang/String;II)J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$smnativeOpenUinputTouchscreen(IIILjava/lang/String;Ljava/lang/String;I)J
    .locals 6

    .line 1
    move-object v0, p3

    .line 2
    move v1, p0

    .line 3
    move v2, p1

    .line 4
    move-object v3, p4

    .line 5
    move v4, p2

    .line 6
    move v5, p5

    .line 7
    invoke-static/range {v0 .. v5}, Lcom/android/server/companion/virtual/InputController;->nativeOpenUinputTouchscreen(Ljava/lang/String;IILjava/lang/String;II)J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$smnativeWriteButtonEvent(IIJJ)Z
    .locals 6

    .line 1
    move-wide v0, p2

    .line 2
    move v2, p0

    .line 3
    move v3, p1

    .line 4
    move-wide v4, p4

    .line 5
    invoke-static/range {v0 .. v5}, Lcom/android/server/companion/virtual/InputController;->nativeWriteButtonEvent(JIIJ)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeWriteDpadKeyEvent(IIJJ)Z
    .locals 6

    .line 1
    move-wide v0, p2

    .line 2
    move v2, p0

    .line 3
    move v3, p1

    .line 4
    move-wide v4, p4

    .line 5
    invoke-static/range {v0 .. v5}, Lcom/android/server/companion/virtual/InputController;->nativeWriteDpadKeyEvent(JIIJ)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeWriteKeyEvent(IIJJ)Z
    .locals 6

    .line 1
    move-wide v0, p2

    .line 2
    move v2, p0

    .line 3
    move v3, p1

    .line 4
    move-wide v4, p4

    .line 5
    invoke-static/range {v0 .. v5}, Lcom/android/server/companion/virtual/InputController;->nativeWriteKeyEvent(JIIJ)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeWriteRelativeEvent(JFFJ)Z
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/android/server/companion/virtual/InputController;->nativeWriteRelativeEvent(JFFJ)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeWriteScrollEvent(JFFJ)Z
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/android/server/companion/virtual/InputController;->nativeWriteScrollEvent(JFFJ)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeWriteStylusButtonEvent(IIJJ)Z
    .locals 6

    .line 1
    move-wide v0, p2

    .line 2
    move v2, p0

    .line 3
    move v3, p1

    .line 4
    move-wide v4, p4

    .line 5
    invoke-static/range {v0 .. v5}, Lcom/android/server/companion/virtual/InputController;->nativeWriteStylusButtonEvent(JIIJ)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeWriteStylusMotionEvent(JIIIIIIIJ)Z
    .locals 0

    .line 1
    invoke-static/range {p0 .. p10}, Lcom/android/server/companion/virtual/InputController;->nativeWriteStylusMotionEvent(JIIIIIIIJ)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeWriteTouchEvent(JIIIFFFFJ)Z
    .locals 0

    .line 1
    invoke-static/range {p0 .. p10}, Lcom/android/server/companion/virtual/InputController;->nativeWriteTouchEvent(JIIIFFFFJ)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    const-wide/16 v1, 0x1

    .line 4
    .line 5
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/android/server/companion/virtual/InputController;->sNextPhysId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lcom/android/server/companion/virtual/InputController$NativeWrapper;Landroid/os/Handler;Landroid/view/WindowManager;Landroid/content/AttributionSource;Lcom/android/server/companion/virtual/InputController$DeviceCreationThreadVerifier;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/android/server/companion/virtual/InputController;->mHandler:Landroid/os/Handler;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    .line 21
    .line 22
    const-class p1, Landroid/hardware/display/DisplayManagerInternal;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroid/hardware/display/DisplayManagerInternal;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/android/server/companion/virtual/InputController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 31
    .line 32
    const-class p1, Lcom/android/server/input/InputManagerService$LocalService;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Lcom/android/server/input/InputManagerService$LocalService;

    .line 39
    .line 40
    iput-object p1, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 41
    .line 42
    iput-object p3, p0, Lcom/android/server/companion/virtual/InputController;->mWindowManager:Landroid/view/WindowManager;

    .line 43
    .line 44
    iput-object p4, p0, Lcom/android/server/companion/virtual/InputController;->mAttributionSource:Landroid/content/AttributionSource;

    .line 45
    .line 46
    iput-object p5, p0, Lcom/android/server/companion/virtual/InputController;->mThreadVerifier:Lcom/android/server/companion/virtual/InputController$DeviceCreationThreadVerifier;

    .line 47
    .line 48
    return-void
.end method

.method public static createPhys(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/companion/virtual/InputController;->sNextPhysId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string/jumbo v0, "virtual%s:%d"

    .line 16
    .line 17
    .line 18
    invoke-static {v0, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method private static native nativeCloseUinput(J)V
.end method

.method private static native nativeOpenUinputDpad(Ljava/lang/String;IILjava/lang/String;)J
.end method

.method private static native nativeOpenUinputKeyboard(Ljava/lang/String;IILjava/lang/String;)J
.end method

.method private static native nativeOpenUinputMouse(Ljava/lang/String;IILjava/lang/String;)J
.end method

.method private static native nativeOpenUinputStylus(Ljava/lang/String;IILjava/lang/String;II)J
.end method

.method private static native nativeOpenUinputTouchscreen(Ljava/lang/String;IILjava/lang/String;II)J
.end method

.method private static native nativeWriteButtonEvent(JIIJ)Z
.end method

.method private static native nativeWriteDpadKeyEvent(JIIJ)Z
.end method

.method private static native nativeWriteKeyEvent(JIIJ)Z
.end method

.method private static native nativeWriteRelativeEvent(JFFJ)Z
.end method

.method private static native nativeWriteScrollEvent(JFFJ)Z
.end method

.method private static native nativeWriteStylusButtonEvent(JIIJ)Z
.end method

.method private static native nativeWriteStylusMotionEvent(JIIIIIIIJ)Z
.end method

.method private static native nativeWriteTouchEvent(JIIIFFFFJ)Z
.end method


# virtual methods
.method public addDeviceForTesting(Landroid/os/IBinder;JIILjava/lang/String;Ljava/lang/String;I)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    .line 3
    .line 4
    monitor-enter v1

    .line 5
    :try_start_0
    iget-object v0, v0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    .line 6
    .line 7
    new-instance v11, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    .line 8
    .line 9
    new-instance v5, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    move-object v2, v11

    .line 15
    move-wide v3, p2

    .line 16
    move/from16 v6, p4

    .line 17
    .line 18
    move/from16 v7, p5

    .line 19
    .line 20
    move-object/from16 v8, p6

    .line 21
    .line 22
    move-object/from16 v9, p7

    .line 23
    .line 24
    move/from16 v10, p8

    .line 25
    .line 26
    invoke-direct/range {v2 .. v10}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;-><init>(JLandroid/os/IBinder$DeathRecipient;IILjava/lang/String;Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    move-object v2, p1

    .line 30
    invoke-virtual {v0, p1, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    monitor-exit v1

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw v0
.end method

.method public final close()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/util/Map$Entry;

    .line 25
    .line 26
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Landroid/os/IBinder;

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v3, v2}, Lcom/android/server/companion/virtual/InputController;->closeInputDeviceDescriptorLocked(Landroid/os/IBinder;Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    :goto_0
    monitor-exit v0

    .line 48
    return-void

    .line 49
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p0
.end method

.method public final closeInputDeviceDescriptorLocked(Landroid/os/IBinder;Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;)V
    .locals 2

    .line 1
    iget-object v0, p2, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-wide v0, p2, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mPtr:J

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/android/server/companion/virtual/InputController;->nativeCloseUinput(J)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object v0, p2, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mPhys:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/hardware/input/InputManagerGlobal;->removeUniqueIdAssociationByPort(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x5

    .line 27
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 28
    .line 29
    iget p2, p2, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mType:I

    .line 30
    .line 31
    if-ne p2, p1, :cond_0

    .line 32
    .line 33
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/android/server/input/InputManagerService;->unsetTypeAssociationInternal(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    const/4 p1, 0x1

    .line 39
    if-ne p2, p1, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    sget-boolean p1, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->removeKeyboardLayoutAssociation(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void
.end method

.method public final createDeviceInternal(ILjava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/util/function/Supplier;)V
    .locals 17

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v15, p2

    .line 6
    .line 7
    move-object/from16 v14, p5

    .line 8
    .line 9
    move-object/from16 v13, p7

    .line 10
    .line 11
    iget-object v1, v7, Lcom/android/server/companion/virtual/InputController;->mThreadVerifier:Lcom/android/server/companion/virtual/InputController$DeviceCreationThreadVerifier;

    .line 12
    .line 13
    invoke-interface {v1}, Lcom/android/server/companion/virtual/InputController$DeviceCreationThreadVerifier;->isValidThread()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_4

    .line 18
    .line 19
    iget-object v1, v7, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v1

    .line 22
    const/4 v8, 0x0

    .line 23
    move v2, v8

    .line 24
    :goto_0
    :try_start_0
    iget-object v3, v7, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    .line 25
    .line 26
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-ge v2, v3, :cond_1

    .line 31
    .line 32
    iget-object v3, v7, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    .line 33
    .line 34
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    .line 39
    .line 40
    iget-object v3, v3, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mName:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_0

    .line 47
    .line 48
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    new-instance v0, Lcom/android/server/companion/virtual/InputController$DeviceCreationException;

    .line 52
    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v3, "Input device name already in use: "

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-direct {v0, v2}, Lcom/android/server/companion/virtual/InputController$DeviceCreationException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw v0

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    goto/16 :goto_7

    .line 76
    .line 77
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    iget-object v1, v7, Lcom/android/server/companion/virtual/InputController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 79
    .line 80
    move/from16 v12, p6

    .line 81
    .line 82
    invoke-virtual {v1, v12}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    iget-object v1, v1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v2, v13, v1}, Landroid/hardware/input/InputManagerGlobal;->addUniqueIdAssociationByPort(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :try_start_1
    new-instance v9, Lcom/android/server/companion/virtual/InputController$WaitForDevice;

    .line 96
    .line 97
    move-object v1, v9

    .line 98
    move-object/from16 v2, p0

    .line 99
    .line 100
    move-object/from16 v3, p2

    .line 101
    .line 102
    move/from16 v4, p3

    .line 103
    .line 104
    move/from16 v5, p4

    .line 105
    .line 106
    move/from16 v6, p6

    .line 107
    .line 108
    invoke-direct/range {v1 .. v6}, Lcom/android/server/companion/virtual/InputController$WaitForDevice;-><init>(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;III)V
    :try_end_1
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 109
    .line 110
    .line 111
    :try_start_2
    invoke-interface/range {p8 .. p8}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    check-cast v1, Ljava/lang/Long;

    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 118
    .line 119
    .line 120
    move-result-wide v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 121
    const-wide/16 v3, 0x0

    .line 122
    .line 123
    cmp-long v3, v1, v3

    .line 124
    .line 125
    if-eqz v3, :cond_3

    .line 126
    .line 127
    :try_start_3
    invoke-virtual {v9}, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->waitForDeviceCreation()I

    .line 128
    .line 129
    .line 130
    move-result v16

    .line 131
    new-instance v11, Lcom/android/server/companion/virtual/InputController$BinderDeathRecipient;

    .line 132
    .line 133
    invoke-direct {v11, v7, v14}, Lcom/android/server/companion/virtual/InputController$BinderDeathRecipient;-><init>(Lcom/android/server/companion/virtual/InputController;Landroid/os/IBinder;)V
    :try_end_3
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 134
    .line 135
    .line 136
    :try_start_4
    invoke-interface {v14, v11, v8}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 137
    .line 138
    .line 139
    :try_start_5
    invoke-virtual {v9}, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->close()V
    :try_end_5
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_5 .. :try_end_5} :catch_0

    .line 140
    .line 141
    .line 142
    iget-object v3, v7, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    .line 143
    .line 144
    monitor-enter v3

    .line 145
    :try_start_6
    iget-object v4, v7, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    .line 146
    .line 147
    new-instance v5, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    .line 148
    .line 149
    move-object v8, v5

    .line 150
    move-wide v9, v1

    .line 151
    move/from16 v12, p1

    .line 152
    .line 153
    move-object v6, v13

    .line 154
    move/from16 v13, p6

    .line 155
    .line 156
    move-object v1, v14

    .line 157
    move-object/from16 v14, p7

    .line 158
    .line 159
    move-object/from16 v15, p2

    .line 160
    .line 161
    invoke-direct/range {v8 .. v16}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;-><init>(JLandroid/os/IBinder$DeathRecipient;IILjava/lang/String;Ljava/lang/String;I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4, v1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 168
    invoke-static {}, Landroid/companion/virtualdevice/flags/Flags;->metricsCollection()Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-eqz v1, :cond_2

    .line 173
    .line 174
    packed-switch v0, :pswitch_data_0

    .line 175
    .line 176
    .line 177
    const-string v1, "No metric known for input type: "

    .line 178
    .line 179
    const-string v2, "VirtualInputController"

    .line 180
    .line 181
    invoke-static {v0, v1, v2}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    const/4 v0, 0x0

    .line 185
    goto :goto_1

    .line 186
    :pswitch_0
    const-string/jumbo v0, "virtual_devices.value_virtual_stylus_created_count"

    .line 187
    .line 188
    .line 189
    goto :goto_1

    .line 190
    :pswitch_1
    const-string/jumbo v0, "virtual_devices.value_virtual_navigationtouchpad_created_count"

    .line 191
    .line 192
    .line 193
    goto :goto_1

    .line 194
    :pswitch_2
    const-string/jumbo v0, "virtual_devices.value_virtual_dpad_created_count"

    .line 195
    .line 196
    .line 197
    goto :goto_1

    .line 198
    :pswitch_3
    const-string/jumbo v0, "virtual_devices.value_virtual_touchscreen_created_count"

    .line 199
    .line 200
    .line 201
    goto :goto_1

    .line 202
    :pswitch_4
    const-string/jumbo v0, "virtual_devices.value_virtual_mouse_created_count"

    .line 203
    .line 204
    .line 205
    goto :goto_1

    .line 206
    :pswitch_5
    const-string/jumbo v0, "virtual_devices.value_virtual_keyboard_created_count"

    .line 207
    .line 208
    .line 209
    :goto_1
    if-eqz v0, :cond_2

    .line 210
    .line 211
    iget-object v1, v7, Lcom/android/server/companion/virtual/InputController;->mAttributionSource:Landroid/content/AttributionSource;

    .line 212
    .line 213
    invoke-virtual {v1}, Landroid/content/AttributionSource;->getUid()I

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    invoke-static {v0, v1}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 218
    .line 219
    .line 220
    :cond_2
    return-void

    .line 221
    :catchall_1
    move-exception v0

    .line 222
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 223
    throw v0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    move-object v6, v13

    .line 226
    goto :goto_6

    .line 227
    :catchall_2
    move-exception v0

    .line 228
    move-object v6, v13

    .line 229
    :goto_2
    move-object v1, v0

    .line 230
    goto :goto_4

    .line 231
    :catch_1
    move-exception v0

    .line 232
    move-object v6, v13

    .line 233
    goto :goto_3

    .line 234
    :catch_2
    move-exception v0

    .line 235
    move-object v6, v13

    .line 236
    move-object v3, v0

    .line 237
    :try_start_8
    new-instance v0, Lcom/android/server/companion/virtual/InputController$DeviceCreationException;

    .line 238
    .line 239
    const-string v4, "Client died before virtual device could be created."

    .line 240
    .line 241
    invoke-direct {v0, v4, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 242
    .line 243
    .line 244
    throw v0
    :try_end_8
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 245
    :catchall_3
    move-exception v0

    .line 246
    goto :goto_2

    .line 247
    :catch_3
    move-exception v0

    .line 248
    :goto_3
    :try_start_9
    iget-object v3, v7, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    .line 249
    .line 250
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    .line 252
    .line 253
    invoke-static {v1, v2}, Lcom/android/server/companion/virtual/InputController;->nativeCloseUinput(J)V

    .line 254
    .line 255
    .line 256
    throw v0

    .line 257
    :cond_3
    move-object v6, v13

    .line 258
    new-instance v0, Lcom/android/server/companion/virtual/InputController$DeviceCreationException;

    .line 259
    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    .line 264
    .line 265
    const-string v2, "A native error occurred when creating virtual input device: "

    .line 266
    .line 267
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    invoke-direct {v0, v1}, Lcom/android/server/companion/virtual/InputController$DeviceCreationException;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 281
    :goto_4
    :try_start_a
    invoke-virtual {v9}, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 282
    .line 283
    .line 284
    goto :goto_5

    .line 285
    :catchall_4
    move-exception v0

    .line 286
    move-object v2, v0

    .line 287
    :try_start_b
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 288
    .line 289
    .line 290
    :goto_5
    throw v1
    :try_end_b
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_b .. :try_end_b} :catch_4

    .line 291
    :catch_4
    move-exception v0

    .line 292
    :goto_6
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    invoke-virtual {v1, v6}, Landroid/hardware/input/InputManagerGlobal;->removeUniqueIdAssociationByPort(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    throw v0

    .line 300
    :goto_7
    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 301
    throw v0

    .line 302
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 303
    .line 304
    const-string v1, "Virtual device creation should happen on an auxiliary thread (e.g. binder thread) and not from the handler\'s thread."

    .line 305
    .line 306
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    throw v0

    .line 310
    nop

    .line 311
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final createKeyboard(Ljava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 1
    const-string v0, "Keyboard"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/companion/virtual/InputController;->createPhys(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v10

    .line 7
    move-object v0, p0

    .line 8
    iget-object v1, v0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    sget-boolean v2, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    .line 14
    .line 15
    iget-object v11, v1, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    .line 16
    .line 17
    move-object/from16 v1, p6

    .line 18
    .line 19
    move-object/from16 v2, p7

    .line 20
    .line 21
    invoke-virtual {v11, v10, v1, v2}, Lcom/android/server/input/InputManagerService;->addKeyboardLayoutAssociation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :try_start_0
    new-instance v9, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;

    .line 25
    .line 26
    const/4 v7, 0x0

    .line 27
    move-object v1, v9

    .line 28
    move-object v2, p0

    .line 29
    move-object v3, p1

    .line 30
    move v4, p2

    .line 31
    move v5, p3

    .line 32
    move-object v6, v10

    .line 33
    invoke-direct/range {v1 .. v7}, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    move-object v1, p0

    .line 38
    move-object v3, p1

    .line 39
    move v4, p2

    .line 40
    move v5, p3

    .line 41
    move-object/from16 v6, p4

    .line 42
    .line 43
    move/from16 v7, p5

    .line 44
    .line 45
    move-object v8, v10

    .line 46
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/companion/virtual/InputController;->createDeviceInternal(ILjava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/util/function/Supplier;)V
    :try_end_0
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    sget-boolean v1, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    .line 52
    .line 53
    invoke-virtual {v11, v10}, Lcom/android/server/input/InputManagerService;->removeKeyboardLayoutAssociation(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v0
.end method

.method public final createNavigationTouchpad(IIIIILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 13

    .line 1
    const-string v0, "NavigationTouchpad"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/companion/virtual/InputController;->createPhys(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v10

    .line 7
    move-object v0, p0

    .line 8
    iget-object v11, v0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 9
    .line 10
    iget-object v1, v11, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    .line 11
    .line 12
    const-string/jumbo v2, "touchNavigation"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v10, v2}, Lcom/android/server/input/InputManagerService;->setTypeAssociationInternal(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    new-instance v12, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda5;

    .line 19
    .line 20
    const/4 v9, 0x1

    .line 21
    move-object v1, v12

    .line 22
    move-object v2, p0

    .line 23
    move-object/from16 v3, p7

    .line 24
    .line 25
    move v4, p1

    .line 26
    move v5, p2

    .line 27
    move-object v6, v10

    .line 28
    move/from16 v7, p4

    .line 29
    .line 30
    move/from16 v8, p5

    .line 31
    .line 32
    invoke-direct/range {v1 .. v9}, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;III)V

    .line 33
    .line 34
    .line 35
    const/4 v2, 0x5

    .line 36
    move-object v1, p0

    .line 37
    move-object/from16 v3, p7

    .line 38
    .line 39
    move v4, p1

    .line 40
    move v5, p2

    .line 41
    move-object/from16 v6, p6

    .line 42
    .line 43
    move/from16 v7, p3

    .line 44
    .line 45
    move-object v8, v10

    .line 46
    move-object v9, v12

    .line 47
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/companion/virtual/InputController;->createDeviceInternal(ILjava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/util/function/Supplier;)V
    :try_end_0
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    iget-object v1, v11, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    .line 53
    .line 54
    invoke-virtual {v1, v10}, Lcom/android/server/input/InputManagerService;->unsetTypeAssociationInternal(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v0
.end method

.method public final getCursorPosition(Landroid/os/IBinder;)Landroid/graphics/PointF;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    .line 11
    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    const-class p1, Lcom/android/server/input/InputManagerService$LocalService;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/android/server/input/InputManagerService$LocalService;

    .line 21
    .line 22
    iget p0, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mDisplayId:I

    .line 23
    .line 24
    iget-object p1, p1, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 27
    .line 28
    invoke-interface {p1, p0}, Lcom/android/server/input/NativeInputManagerService;->getMouseCursorPosition(I)[F

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    array-length p1, p0

    .line 35
    const/4 v1, 0x2

    .line 36
    if-ne p1, v1, :cond_0

    .line 37
    .line 38
    new-instance p1, Landroid/graphics/PointF;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    aget v1, p0, v1

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    aget p0, p0, v2

    .line 45
    .line 46
    invoke-direct {p1, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 47
    .line 48
    .line 49
    monitor-exit v0

    .line 50
    return-object p1

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    const-string p1, "Failed to get mouse cursor position"

    .line 56
    .line 57
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0

    .line 61
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 62
    .line 63
    const-string p1, "Could not get cursor position for input device for given token"

    .line 64
    .line 65
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p0

    .line 69
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    throw p0
.end method

.method public getInputDeviceDescriptors()Ljava/util/Map;
    .locals 2

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 12
    .line 13
    .line 14
    monitor-exit v1

    .line 15
    return-object v0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
.end method

.method public final sendButtonEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseButtonEvent;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    .line 20
    .line 21
    iget-wide v3, p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mPtr:J

    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseButtonEvent;->getButtonCode()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseButtonEvent;->getAction()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseButtonEvent;->getEventTimeNanos()J

    .line 32
    .line 33
    .line 34
    move-result-wide v5

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-static/range {v1 .. v6}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteButtonEvent(IIJJ)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    monitor-exit v0

    .line 43
    return p0

    .line 44
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public final sendDpadKeyEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyEvent;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    .line 20
    .line 21
    iget-wide v3, p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mPtr:J

    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/hardware/input/VirtualKeyEvent;->getKeyCode()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {p2}, Landroid/hardware/input/VirtualKeyEvent;->getAction()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {p2}, Landroid/hardware/input/VirtualKeyEvent;->getEventTimeNanos()J

    .line 32
    .line 33
    .line 34
    move-result-wide v5

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-static/range {v1 .. v6}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteDpadKeyEvent(IIJJ)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    monitor-exit v0

    .line 43
    return p0

    .line 44
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public final sendKeyEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyEvent;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    .line 20
    .line 21
    iget-wide v3, p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mPtr:J

    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/hardware/input/VirtualKeyEvent;->getKeyCode()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {p2}, Landroid/hardware/input/VirtualKeyEvent;->getAction()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {p2}, Landroid/hardware/input/VirtualKeyEvent;->getEventTimeNanos()J

    .line 32
    .line 33
    .line 34
    move-result-wide v5

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-static/range {v1 .. v6}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteKeyEvent(IIJJ)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    monitor-exit v0

    .line 43
    return p0

    .line 44
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public final sendRelativeEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseRelativeEvent;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    .line 20
    .line 21
    iget-wide v1, p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mPtr:J

    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseRelativeEvent;->getRelativeX()F

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseRelativeEvent;->getRelativeY()F

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseRelativeEvent;->getEventTimeNanos()J

    .line 32
    .line 33
    .line 34
    move-result-wide v5

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-static/range {v1 .. v6}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteRelativeEvent(JFFJ)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    monitor-exit v0

    .line 43
    return p0

    .line 44
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public final sendScrollEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseScrollEvent;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    .line 20
    .line 21
    iget-wide v1, p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mPtr:J

    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseScrollEvent;->getXAxisMovement()F

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseScrollEvent;->getYAxisMovement()F

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseScrollEvent;->getEventTimeNanos()J

    .line 32
    .line 33
    .line 34
    move-result-wide v5

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-static/range {v1 .. v6}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteScrollEvent(JFFJ)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    monitor-exit v0

    .line 43
    return p0

    .line 44
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public final sendStylusButtonEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualStylusButtonEvent;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    .line 20
    .line 21
    iget-wide v3, p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mPtr:J

    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/hardware/input/VirtualStylusButtonEvent;->getButtonCode()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {p2}, Landroid/hardware/input/VirtualStylusButtonEvent;->getAction()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {p2}, Landroid/hardware/input/VirtualStylusButtonEvent;->getEventTimeNanos()J

    .line 32
    .line 33
    .line 34
    move-result-wide v5

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-static/range {v1 .. v6}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteStylusButtonEvent(IIJJ)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    monitor-exit v0

    .line 43
    return p0

    .line 44
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public final sendStylusMotionEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualStylusMotionEvent;)Z
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    .line 20
    .line 21
    iget-wide v1, p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mPtr:J

    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/hardware/input/VirtualStylusMotionEvent;->getToolType()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-virtual {p2}, Landroid/hardware/input/VirtualStylusMotionEvent;->getAction()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-virtual {p2}, Landroid/hardware/input/VirtualStylusMotionEvent;->getX()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    invoke-virtual {p2}, Landroid/hardware/input/VirtualStylusMotionEvent;->getY()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    invoke-virtual {p2}, Landroid/hardware/input/VirtualStylusMotionEvent;->getPressure()I

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    invoke-virtual {p2}, Landroid/hardware/input/VirtualStylusMotionEvent;->getTiltX()I

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    invoke-virtual {p2}, Landroid/hardware/input/VirtualStylusMotionEvent;->getTiltY()I

    .line 48
    .line 49
    .line 50
    move-result v9

    .line 51
    invoke-virtual {p2}, Landroid/hardware/input/VirtualStylusMotionEvent;->getEventTimeNanos()J

    .line 52
    .line 53
    .line 54
    move-result-wide v10

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-static/range {v1 .. v11}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteStylusMotionEvent(JIIIIIIIJ)Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    monitor-exit v0

    .line 63
    return p0

    .line 64
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    throw p0
.end method

.method public final sendTouchEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualTouchEvent;)Z
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    .line 20
    .line 21
    iget-wide v1, p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mPtr:J

    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/hardware/input/VirtualTouchEvent;->getPointerId()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-virtual {p2}, Landroid/hardware/input/VirtualTouchEvent;->getToolType()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-virtual {p2}, Landroid/hardware/input/VirtualTouchEvent;->getAction()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    invoke-virtual {p2}, Landroid/hardware/input/VirtualTouchEvent;->getX()F

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    invoke-virtual {p2}, Landroid/hardware/input/VirtualTouchEvent;->getY()F

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    invoke-virtual {p2}, Landroid/hardware/input/VirtualTouchEvent;->getPressure()F

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    invoke-virtual {p2}, Landroid/hardware/input/VirtualTouchEvent;->getMajorAxisSize()F

    .line 48
    .line 49
    .line 50
    move-result v9

    .line 51
    invoke-virtual {p2}, Landroid/hardware/input/VirtualTouchEvent;->getEventTimeNanos()J

    .line 52
    .line 53
    .line 54
    move-result-wide v10

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-static/range {v1 .. v11}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteTouchEvent(JIIIFFFFJ)Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    monitor-exit v0

    .line 63
    return p0

    .line 64
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    throw p0
.end method

.method public final unregisterInputDevice(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const-string p0, "VirtualInputController"

    .line 15
    .line 16
    const-string p1, "Could not unregister input device for given token."

    .line 17
    .line 18
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/companion/virtual/InputController;->closeInputDeviceDescriptorLocked(Landroid/os/IBinder;Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method
