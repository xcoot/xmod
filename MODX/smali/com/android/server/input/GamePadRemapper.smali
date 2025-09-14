.class public final Lcom/android/server/input/GamePadRemapper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final SIMPLE_BUTTON_LIST:Ljava/util/Set;

.field public static final SIMPLE_STICK_LIST:Ljava/util/Set;


# instance fields
.field public final mDataStore:Lcom/android/server/input/PersistentDataStore;

.field public final mDeviceToProfile:Ljava/util/Map;

.field public final mDeviceToProfileLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/input/GamePadRemapper;->SIMPLE_BUTTON_LIST:Ljava/util/Set;

    .line 8
    const/16 v1, 0x60

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 17
    const/16 v1, 0x61

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 26
    const/16 v1, 0x63

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v1

    .line 32
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    const/16 v1, 0x64

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v1

    .line 41
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    const/16 v1, 0x66

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v1

    .line 50
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    const/16 v1, 0x67

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v1

    .line 59
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    const/16 v1, 0x6a

    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    move-result-object v1

    .line 68
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    const/16 v1, 0x6b

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    move-result-object v1

    .line 77
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    const/16 v1, 0x811

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    move-result-object v1

    .line 86
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    const/16 v1, 0x812

    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    move-result-object v1

    .line 95
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v0, Landroid/util/ArraySet;

    .line 100
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 103
    sput-object v0, Lcom/android/server/input/GamePadRemapper;->SIMPLE_STICK_LIST:Ljava/util/Set;

    .line 105
    const/16 v1, 0x800

    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    move-result-object v1

    .line 111
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    const/16 v1, 0x80b

    .line 116
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    move-result-object v1

    .line 120
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    const/16 v1, 0x80f

    .line 125
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    move-result-object v1

    .line 129
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    return-void
.end method

.method public constructor <init>(Lcom/android/server/input/PersistentDataStore;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/input/GamePadRemapper;->mDeviceToProfileLock:Ljava/lang/Object;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/input/GamePadRemapper;->mDeviceToProfile:Ljava/util/Map;

    .line 18
    iput-object p1, p0, Lcom/android/server/input/GamePadRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 20
    return-void
.end method

.method public static final getButtonString(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0x60

    .line 3
    if-eq p0, v0, :cond_c

    .line 5
    const/16 v0, 0x61

    .line 7
    if-eq p0, v0, :cond_b

    .line 9
    const/16 v0, 0x63

    .line 11
    if-eq p0, v0, :cond_a

    .line 13
    const/16 v0, 0x64

    .line 15
    if-eq p0, v0, :cond_9

    .line 17
    const/16 v0, 0x66

    .line 19
    if-eq p0, v0, :cond_8

    .line 21
    const/16 v0, 0x67

    .line 23
    if-eq p0, v0, :cond_7

    .line 25
    const/16 v0, 0x6a

    .line 27
    if-eq p0, v0, :cond_6

    .line 29
    const/16 v0, 0x6b

    .line 31
    if-eq p0, v0, :cond_5

    .line 33
    const/16 v0, 0x800

    .line 35
    if-eq p0, v0, :cond_4

    .line 37
    const/16 v0, 0x80b

    .line 39
    if-eq p0, v0, :cond_3

    .line 41
    const/16 v0, 0x80f

    .line 43
    if-eq p0, v0, :cond_2

    .line 45
    const/16 v0, 0x811

    .line 47
    if-eq p0, v0, :cond_1

    .line 49
    const/16 v0, 0x812

    .line 51
    if-eq p0, v0, :cond_0

    .line 53
    const-string v0, "Wrong button "

    .line 55
    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object p0

    .line 59
    return-object p0

    .line 60
    :cond_0
    const-string p0, "BUTTON_RTRIGGER"

    .line 62
    return-object p0

    .line 63
    :cond_1
    const-string p0, "BUTTON_LTRIGGER"

    .line 65
    return-object p0

    .line 66
    :cond_2
    const-string p0, "STICK_DPAD"

    .line 68
    return-object p0

    .line 69
    :cond_3
    const-string p0, "STICK_RIGHT"

    .line 71
    return-object p0

    .line 72
    :cond_4
    const-string p0, "STICK_LEFT"

    .line 74
    return-object p0

    .line 75
    :cond_5
    const-string p0, "BUTTON_THUMBR"

    .line 77
    return-object p0

    .line 78
    :cond_6
    const-string p0, "BUTTON_THUMBL"

    .line 80
    return-object p0

    .line 81
    :cond_7
    const-string p0, "BUTTON_R2"

    .line 83
    return-object p0

    .line 84
    :cond_8
    const-string p0, "BUTTON_L1"

    .line 86
    return-object p0

    .line 87
    :cond_9
    const-string p0, "BUTTON_Y"

    .line 89
    return-object p0

    .line 90
    :cond_a
    const-string p0, "BUTTON_X"

    .line 92
    return-object p0

    .line 93
    :cond_b
    const-string p0, "BUTTON_B"

    .line 95
    return-object p0

    .line 96
    :cond_c
    const-string p0, "BUTTON_A"

    .line 98
    return-object p0
.end method

.method public static isValidButton(I)Z
    .locals 2

    .line 1
    const/16 v0, 0x60

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq p0, v0, :cond_0

    .line 6
    const/16 v0, 0x61

    .line 8
    if-eq p0, v0, :cond_0

    .line 10
    const/16 v0, 0x63

    .line 12
    if-eq p0, v0, :cond_0

    .line 14
    const/16 v0, 0x64

    .line 16
    if-eq p0, v0, :cond_0

    .line 18
    const/16 v0, 0x66

    .line 20
    if-eq p0, v0, :cond_0

    .line 22
    const/16 v0, 0x67

    .line 24
    if-eq p0, v0, :cond_0

    .line 26
    const/16 v0, 0x6a

    .line 28
    if-eq p0, v0, :cond_0

    .line 30
    const/16 v0, 0x6b

    .line 32
    if-eq p0, v0, :cond_0

    .line 34
    const/16 v0, 0x811

    .line 36
    if-eq p0, v0, :cond_0

    .line 38
    const/16 v0, 0x812

    .line 40
    if-eq p0, v0, :cond_0

    .line 42
    const/4 p0, 0x0

    .line 43
    return p0

    .line 44
    :cond_0
    return v1
.end method

.method public static isValidId(I)Z
    .locals 1

    .line 1
    if-ltz p0, :cond_1

    .line 3
    const/4 v0, 0x5

    .line 4
    if-lt p0, v0, :cond_0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method


# virtual methods
.method public final systemRunning()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/input/GamePadRemapper;->mDeviceToProfileLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/GamePadRemapper;->mDeviceToProfile:Ljava/util/Map;

    .line 6
    check-cast v1, Ljava/util/HashMap;

    .line 8
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    iget-object v1, p0, Lcom/android/server/input/GamePadRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 14
    monitor-enter v1

    .line 15
    :try_start_1
    iget-object p0, p0, Lcom/android/server/input/GamePadRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 17
    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->loadIfNeededGamePadProfiles()V

    .line 20
    monitor-exit v1

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw p0

    .line 25
    :catchall_1
    move-exception p0

    .line 26
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 27
    throw p0
.end method
