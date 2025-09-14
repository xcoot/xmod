.class public final Lcom/android/server/input/KeyRemapper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDataStore:Lcom/android/server/input/PersistentDataStore;

.field public final mHandler:Landroid/os/Handler;

.field public final mNative:Lcom/android/server/input/NativeInputManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/NativeInputManagerService$NativeImpl;Lcom/android/server/input/PersistentDataStore;Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/input/KeyRemapper;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/input/KeyRemapper;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/input/KeyRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 9
    .line 10
    new-instance p1, Landroid/os/Handler;

    .line 11
    .line 12
    new-instance p2, Lcom/android/server/input/KeyRemapper$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    invoke-direct {p2, p0}, Lcom/android/server/input/KeyRemapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/KeyRemapper;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p1, p4, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/server/input/KeyRemapper;->mHandler:Landroid/os/Handler;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final addKeyRemapping(II)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/input/KeyRemapper;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v1, Landroid/hardware/input/InputManager;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/hardware/input/InputManager;

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-object v1, v0

    .line 15
    check-cast v1, Landroid/hardware/input/InputManager;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    array-length v2, v1

    .line 22
    const/4 v3, 0x0

    .line 23
    :goto_0
    if-ge v3, v2, :cond_1

    .line 24
    .line 25
    aget v4, v1, v3

    .line 26
    .line 27
    invoke-virtual {v0, v4}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    if-eqz v5, :cond_0

    .line 32
    .line 33
    invoke-virtual {v5}, Landroid/view/InputDevice;->isVirtual()Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-nez v6, :cond_0

    .line 38
    .line 39
    invoke-virtual {v5}, Landroid/view/InputDevice;->isFullKeyboard()Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_0

    .line 44
    .line 45
    iget-object v5, p0, Lcom/android/server/input/KeyRemapper;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 46
    .line 47
    invoke-interface {v5, v4, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->addKeyRemapping(III)V

    .line 48
    .line 49
    .line 50
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    return-void
.end method

.method public final getKeyRemapping()Ljava/util/Map;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/input/KeyRemapper;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo v1, "settings_new_keyboard_modifier_key"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance p0, Landroid/util/ArrayMap;

    .line 13
    .line 14
    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    .line 15
    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/KeyRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 19
    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/KeyRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->loadIfNeeded()V

    .line 24
    .line 25
    .line 26
    new-instance v1, Ljava/util/HashMap;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/input/PersistentDataStore;->mKeyRemapping:Ljava/util/Map;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 31
    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-object v1

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0
.end method

.method public final onInputDeviceAdded(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/input/KeyRemapper;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo v1, "settings_new_keyboard_modifier_key"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/KeyRemapper;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    const-class v1, Landroid/hardware/input/InputManager;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/hardware/input/InputManager;

    .line 22
    .line 23
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/InputDevice;->isVirtual()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/InputDevice;->isFullKeyboard()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/android/server/input/KeyRemapper;->getKeyRemapping()Ljava/util/Map;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    new-instance v1, Lcom/android/server/input/KeyRemapper$$ExternalSyntheticLambda1;

    .line 49
    .line 50
    invoke-direct {v1, p0, p1}, Lcom/android/server/input/KeyRemapper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/input/KeyRemapper;I)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method

.method public final onInputDeviceChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onInputDeviceRemoved(I)V
    .locals 0

    .line 1
    return-void
.end method
