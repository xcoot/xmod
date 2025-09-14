.class public final Lcom/android/server/input/KeyboardBacklightController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# static fields
.field public static final DEBUG:Z

.field static final DEFAULT_BRIGHTNESS_VALUE_FOR_LEVEL:[I

.field static final MAX_BRIGHTNESS_CHANGE_STEPS:I = 0xa

.field public static final TRANSITION_ANIMATION_DURATION_MILLIS:J

.field static final USER_INACTIVITY_THRESHOLD_MILLIS:J


# instance fields
.field public mAmbientBacklightValue:I

.field public final mAmbientController:Lcom/android/server/input/AmbientKeyboardBacklightController;

.field public mAmbientListener:Lcom/android/server/input/KeyboardBacklightController$$ExternalSyntheticLambda1;

.field public final mAnimatorFactory:Lcom/android/server/input/KeyboardBacklightController$AnimatorFactory;

.field public final mContext:Landroid/content/Context;

.field public final mDataStore:Lcom/android/server/input/PersistentDataStore;

.field public final mHandler:Landroid/os/Handler;

.field public mIsBacklightOn:Z

.field public mIsInteractive:Z

.field public final mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

.field public final mKeyboardBacklights:Landroid/util/SparseArray;

.field public final mNative:Lcom/android/server/input/NativeInputManagerService;

.field public final mUEventManager:Lcom/android/server/input/UEventManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "KbdBacklightController"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/input/KeyboardBacklightController;->DEBUG:Z

    .line 9
    .line 10
    const-wide/16 v0, 0x1

    .line 11
    .line 12
    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    sput-wide v0, Lcom/android/server/input/KeyboardBacklightController;->TRANSITION_ANIMATION_DURATION_MILLIS:J

    .line 21
    .line 22
    const-wide/16 v0, 0x1e

    .line 23
    .line 24
    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    sput-wide v0, Lcom/android/server/input/KeyboardBacklightController;->USER_INACTIVITY_THRESHOLD_MILLIS:J

    .line 33
    .line 34
    const/16 v0, 0xb

    .line 35
    .line 36
    new-array v0, v0, [I

    .line 37
    .line 38
    sput-object v0, Lcom/android/server/input/KeyboardBacklightController;->DEFAULT_BRIGHTNESS_VALUE_FOR_LEVEL:[I

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    :goto_0
    const/16 v1, 0xa

    .line 42
    .line 43
    if-gt v0, v1, :cond_0

    .line 44
    .line 45
    sget-object v1, Lcom/android/server/input/KeyboardBacklightController;->DEFAULT_BRIGHTNESS_VALUE_FOR_LEVEL:[I

    .line 46
    .line 47
    int-to-float v2, v0

    .line 48
    const/high16 v3, 0x437f0000    # 255.0f

    .line 49
    .line 50
    mul-float/2addr v2, v3

    .line 51
    const/high16 v3, 0x41200000    # 10.0f

    .line 52
    .line 53
    div-float/2addr v2, v3

    .line 54
    float-to-double v2, v2

    .line 55
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    .line 56
    .line 57
    .line 58
    move-result-wide v2

    .line 59
    double-to-int v2, v2

    .line 60
    aput v2, v1, v0

    .line 61
    .line 62
    add-int/lit8 v0, v0, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/NativeInputManagerService;Lcom/android/server/input/PersistentDataStore;Landroid/os/Looper;Lcom/android/server/input/KeyboardBacklightController$AnimatorFactory;Lcom/android/server/input/UEventManager;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mIsBacklightOn:Z

    .line 14
    .line 15
    iput-boolean v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mIsInteractive:Z

    .line 16
    .line 17
    new-instance v1, Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

    .line 23
    .line 24
    iput v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mAmbientBacklightValue:I

    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/server/input/KeyboardBacklightController;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    iput-object p2, p0, Lcom/android/server/input/KeyboardBacklightController;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 29
    .line 30
    iput-object p3, p0, Lcom/android/server/input/KeyboardBacklightController;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 31
    .line 32
    new-instance p2, Landroid/os/Handler;

    .line 33
    .line 34
    new-instance p3, Lcom/android/server/input/KeyboardBacklightController$$ExternalSyntheticLambda2;

    .line 35
    .line 36
    invoke-direct {p3, p0}, Lcom/android/server/input/KeyboardBacklightController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/input/KeyboardBacklightController;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p2, p4, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 40
    .line 41
    .line 42
    iput-object p2, p0, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    .line 43
    .line 44
    iput-object p5, p0, Lcom/android/server/input/KeyboardBacklightController;->mAnimatorFactory:Lcom/android/server/input/KeyboardBacklightController$AnimatorFactory;

    .line 45
    .line 46
    new-instance p2, Lcom/android/server/input/AmbientKeyboardBacklightController;

    .line 47
    .line 48
    invoke-direct {p2, p1, p4}, Lcom/android/server/input/AmbientKeyboardBacklightController;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 49
    .line 50
    .line 51
    iput-object p2, p0, Lcom/android/server/input/KeyboardBacklightController;->mAmbientController:Lcom/android/server/input/AmbientKeyboardBacklightController;

    .line 52
    .line 53
    iput-object p6, p0, Lcom/android/server/input/KeyboardBacklightController;->mUEventManager:Lcom/android/server/input/UEventManager;

    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public final decrementKeyboardBacklight(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v1, 0x3

    .line 8
    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/util/IndentingPrintWriter;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "KbdBacklightController: "

    .line 9
    .line 10
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, " keyboard backlights"

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    :goto_0
    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-ge p1, v1, :cond_0

    .line 45
    .line 46
    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    .line 47
    .line 48
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;

    .line 53
    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v3, ": "

    .line 63
    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    add-int/lit8 p1, p1, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public handleAmbientLightValueChanged(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/android/server/input/KeyboardBacklightController;->mAmbientBacklightValue:I

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-ge p1, v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;

    .line 19
    .line 20
    iget-object v1, v0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->this$0:Lcom/android/server/input/KeyboardBacklightController;

    .line 21
    .line 22
    iget-boolean v2, v1, Lcom/android/server/input/KeyboardBacklightController;->mIsBacklightOn:Z

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    iget-boolean v2, v0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mUseAmbientController:Z

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    iget v1, v1, Lcom/android/server/input/KeyboardBacklightController;->mAmbientBacklightValue:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->setBacklightValue(I)V

    .line 33
    .line 34
    .line 35
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return-void
.end method

.method public handleInteractiveStateChange(Z)V
    .locals 5

    .line 1
    iput-boolean p1, p0, Lcom/android/server/input/KeyboardBacklightController;->mIsInteractive:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardBacklightController;->handleUserActivity()V

    .line 6
    .line 7
    .line 8
    goto :goto_3

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/android/server/input/KeyboardBacklightController;->mIsBacklightOn:Z

    .line 11
    .line 12
    move v0, p1

    .line 13
    :goto_0
    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-ge v0, v1, :cond_3

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;

    .line 28
    .line 29
    iget-boolean v2, v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mUseAmbientController:Z

    .line 30
    .line 31
    iget-object v3, v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->this$0:Lcom/android/server/input/KeyboardBacklightController;

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    iget v2, v3, Lcom/android/server/input/KeyboardBacklightController;->mAmbientBacklightValue:I

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    iget-object v2, v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mBrightnessValueForLevel:[I

    .line 39
    .line 40
    iget v4, v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mBrightnessLevel:I

    .line 41
    .line 42
    aget v2, v2, v4

    .line 43
    .line 44
    :goto_1
    iget-boolean v3, v3, Lcom/android/server/input/KeyboardBacklightController;->mIsBacklightOn:Z

    .line 45
    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    move v2, p1

    .line 50
    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->setBacklightValue(I)V

    .line 51
    .line 52
    .line 53
    add-int/lit8 v0, v0, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardBacklightController;->updateAmbientLightListener()V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final handleUserActivity()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mIsInteractive:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mIsBacklightOn:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    move v1, v0

    .line 11
    :goto_0
    iget-object v2, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-ge v1, v2, :cond_3

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;

    .line 26
    .line 27
    iget-boolean v3, v2, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mUseAmbientController:Z

    .line 28
    .line 29
    iget-object v4, v2, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->this$0:Lcom/android/server/input/KeyboardBacklightController;

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    iget v3, v4, Lcom/android/server/input/KeyboardBacklightController;->mAmbientBacklightValue:I

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    iget-object v3, v2, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mBrightnessValueForLevel:[I

    .line 37
    .line 38
    iget v5, v2, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mBrightnessLevel:I

    .line 39
    .line 40
    aget v3, v3, v5

    .line 41
    .line 42
    :goto_1
    iget-boolean v4, v4, Lcom/android/server/input/KeyboardBacklightController;->mIsBacklightOn:Z

    .line 43
    .line 44
    if-eqz v4, :cond_2

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    move v3, v0

    .line 48
    :goto_2
    invoke-virtual {v2, v3}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->setBacklightValue(I)V

    .line 49
    .line 50
    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    .line 55
    .line 56
    const/4 v1, 0x5

    .line 57
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    .line 61
    .line 62
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 63
    .line 64
    .line 65
    move-result-wide v2

    .line 66
    sget-wide v4, Lcom/android/server/input/KeyboardBacklightController;->USER_INACTIVITY_THRESHOLD_MILLIS:J

    .line 67
    .line 68
    add-long/2addr v2, v4

    .line 69
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final incrementKeyboardBacklight(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final notifyUserActivity()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onInputDeviceAdded(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardBacklightController;->onInputDeviceChanged(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardBacklightController;->updateAmbientLightListener()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mContext:Landroid/content/Context;

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
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v0, v1

    .line 20
    :goto_0
    if-nez v0, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    invoke-virtual {v0}, Landroid/view/InputDevice;->getLightsManager()Landroid/hardware/lights/LightsManager;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Landroid/hardware/lights/LightsManager;->getLights()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_3

    .line 40
    .line 41
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Landroid/hardware/lights/Light;

    .line 46
    .line 47
    invoke-virtual {v3}, Landroid/hardware/lights/Light;->getType()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    const/16 v5, 0x2713

    .line 52
    .line 53
    if-ne v4, v5, :cond_2

    .line 54
    .line 55
    invoke-virtual {v3}, Landroid/hardware/lights/Light;->hasBrightnessControl()Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_2

    .line 60
    .line 61
    move-object v1, v3

    .line 62
    :cond_3
    if-nez v1, :cond_4

    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_4
    iget-object v2, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    .line 71
    .line 72
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;

    .line 77
    .line 78
    if-eqz v2, :cond_5

    .line 79
    .line 80
    iget-object v2, v2, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mLight:Landroid/hardware/lights/Light;

    .line 81
    .line 82
    invoke-virtual {v2}, Landroid/hardware/lights/Light;->getId()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    invoke-virtual {v1}, Landroid/hardware/lights/Light;->getId()I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-ne v2, v3, :cond_5

    .line 91
    .line 92
    return-void

    .line 93
    :cond_5
    iget-object v2, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    .line 94
    .line 95
    new-instance v3, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;

    .line 96
    .line 97
    invoke-direct {v3, p0, p1, v1}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;-><init>(Lcom/android/server/input/KeyboardBacklightController;ILandroid/hardware/lights/Light;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    invoke-static {}, Lcom/android/server/input/InputFeatureFlagProvider;->isAmbientKeyboardBacklightControlEnabled()Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_6

    .line 108
    .line 109
    goto/16 :goto_2

    .line 110
    .line 111
    :cond_6
    iget-object p1, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    .line 112
    .line 113
    invoke-virtual {v0}, Landroid/view/InputDevice;->getId()I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    check-cast p1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;

    .line 122
    .line 123
    iget-object v2, p0, Lcom/android/server/input/KeyboardBacklightController;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 124
    .line 125
    monitor-enter v2

    .line 126
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 127
    .line 128
    invoke-virtual {v0}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v1}, Landroid/hardware/lights/Light;->getId()I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->loadIfNeeded()V

    .line 137
    .line 138
    .line 139
    iget-object p0, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    .line 140
    .line 141
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    check-cast p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    .line 146
    .line 147
    if-nez p0, :cond_7

    .line 148
    .line 149
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    goto :goto_1

    .line 154
    :cond_7
    iget-object p0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardBacklightBrightnessMap:Landroid/util/SparseIntArray;

    .line 155
    .line 156
    const/4 v0, -0x1

    .line 157
    invoke-virtual {p0, v1, v0}, Landroid/util/SparseIntArray;->get(II)I

    .line 158
    .line 159
    .line 160
    move-result p0

    .line 161
    if-ne p0, v0, :cond_8

    .line 162
    .line 163
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    goto :goto_1

    .line 168
    :cond_8
    invoke-static {p0}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    if-eqz p1, :cond_b

    .line 174
    .line 175
    invoke-virtual {p0}, Ljava/util/OptionalInt;->isPresent()Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-eqz v0, :cond_b

    .line 180
    .line 181
    const/16 v0, 0xff

    .line 182
    .line 183
    invoke-virtual {p0}, Ljava/util/OptionalInt;->getAsInt()I

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    const/4 v1, 0x0

    .line 192
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    iget-object v2, p1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mBrightnessValueForLevel:[I

    .line 197
    .line 198
    invoke-static {v2, v0}, Ljava/util/Arrays;->binarySearch([II)I

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-gez v0, :cond_9

    .line 203
    .line 204
    iget-object v2, p1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mBrightnessValueForLevel:[I

    .line 205
    .line 206
    array-length v2, v2

    .line 207
    add-int/lit8 v2, v2, -0x1

    .line 208
    .line 209
    add-int/lit8 v0, v0, 0x1

    .line 210
    .line 211
    neg-int v0, v0

    .line 212
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    :cond_9
    iput-boolean v1, p1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mUseAmbientController:Z

    .line 217
    .line 218
    iget-object v1, p1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->this$0:Lcom/android/server/input/KeyboardBacklightController;

    .line 219
    .line 220
    iget-boolean v1, v1, Lcom/android/server/input/KeyboardBacklightController;->mIsBacklightOn:Z

    .line 221
    .line 222
    if-eqz v1, :cond_a

    .line 223
    .line 224
    iget-object v1, p1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mBrightnessValueForLevel:[I

    .line 225
    .line 226
    aget v1, v1, v0

    .line 227
    .line 228
    invoke-virtual {p1, v1}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->setBacklightValue(I)V

    .line 229
    .line 230
    .line 231
    :cond_a
    iput v0, p1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mBrightnessLevel:I

    .line 232
    .line 233
    sget-boolean p1, Lcom/android/server/input/KeyboardBacklightController;->DEBUG:Z

    .line 234
    .line 235
    if-eqz p1, :cond_b

    .line 236
    .line 237
    const-string p1, "KbdBacklightController"

    .line 238
    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    const-string v1, "Restoring brightness level "

    .line 242
    .line 243
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {p0}, Ljava/util/OptionalInt;->getAsInt()I

    .line 247
    .line 248
    .line 249
    move-result p0

    .line 250
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p0

    .line 257
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .line 259
    .line 260
    :cond_b
    :goto_2
    return-void

    .line 261
    :catchall_0
    move-exception p0

    .line 262
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    throw p0
.end method

.method public onInputDeviceRemoved(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardBacklightController;->updateAmbientLightListener()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onInteractiveChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v1, 0x6

    .line 8
    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onKeyboardBacklightUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 4

    .line 1
    const-string v0, "ACTION"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "ADD"

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    const-string v0, "SUBSYSTEM"

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "LEDS"

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    const-string v0, "DEVPATH"

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/16 v0, 0x2f

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-gez v1, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 52
    .line 53
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const/4 v3, 0x0

    .line 58
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const-string/jumbo v3, "leds"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_3

    .line 70
    .line 71
    const-string/jumbo v3, "kbd_backlight"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-nez v2, :cond_2

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-ltz v0, :cond_3

    .line 86
    .line 87
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 88
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v1, "/sys"

    .line 92
    .line 93
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->sysfsNodeChanged(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :cond_3
    :goto_0
    return-void
.end method

.method public final registerKeyboardBacklightListener(Landroid/hardware/input/IKeyboardBacklightListener;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;

    .line 13
    .line 14
    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;-><init>(Lcom/android/server/input/KeyboardBacklightController;ILandroid/hardware/input/IKeyboardBacklightListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    :try_start_1
    invoke-interface {p1}, Landroid/hardware/input/IKeyboardBacklightListener;->asBinder()Landroid/os/IBinder;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    .line 24
    .line 25
    :try_start_2
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-virtual {p0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception p0

    .line 35
    new-instance p1, Ljava/lang/RuntimeException;

    .line 36
    .line 37
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    throw p1

    .line 41
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    const-string p1, "The calling process has already registered a KeyboardBacklightListener."

    .line 44
    .line 45
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p0

    .line 49
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    throw p0
.end method

.method public final systemRunning()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mContext:Landroid/content/Context;

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
    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    .line 15
    .line 16
    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mUEventManager:Lcom/android/server/input/UEventManager;

    .line 36
    .line 37
    new-instance v1, Lcom/android/server/input/KeyboardBacklightController$1;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lcom/android/server/input/KeyboardBacklightController$1;-><init>(Lcom/android/server/input/KeyboardBacklightController;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    const-string/jumbo v0, "kbd_backlight"

    .line 46
    .line 47
    .line 48
    iget-object v1, v1, Lcom/android/server/input/UEventManager$UEventListener;->mObserver:Lcom/android/server/input/UEventManager$UEventListener$1;

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lcom/android/server/input/InputFeatureFlagProvider;->isAmbientKeyboardBacklightControlEnabled()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController;->mAmbientController:Lcom/android/server/input/AmbientKeyboardBacklightController;

    .line 60
    .line 61
    iget-object v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHandler:Landroid/os/Handler;

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mContext:Landroid/content/Context;

    .line 67
    .line 68
    const-class v1, Landroid/hardware/display/DisplayManager;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 75
    .line 76
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHandler:Landroid/os/Handler;

    .line 80
    .line 81
    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 82
    .line 83
    .line 84
    :cond_0
    return-void
.end method

.method public final unregisterKeyboardBacklightListener(Landroid/hardware/input/IKeyboardBacklightListener;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget-object v2, v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;->mListener:Landroid/hardware/input/IKeyboardBacklightListener;

    .line 15
    .line 16
    invoke-interface {v2}, Landroid/hardware/input/IKeyboardBacklightListener;->asBinder()Landroid/os/IBinder;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-interface {p1}, Landroid/hardware/input/IKeyboardBacklightListener;->asBinder()Landroid/os/IBinder;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-ne v2, p1, :cond_0

    .line 25
    .line 26
    iget-object p1, v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;->mListener:Landroid/hardware/input/IKeyboardBacklightListener;

    .line 27
    .line 28
    invoke-interface {p1}, Landroid/hardware/input/IKeyboardBacklightListener;->asBinder()Landroid/os/IBinder;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

    .line 37
    .line 38
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 39
    .line 40
    .line 41
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string p1, "The calling process has a different registered KeyboardBacklightListener."

    .line 48
    .line 49
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0

    .line 53
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    const-string p1, "The calling process has no registered KeyboardBacklightListener."

    .line 56
    .line 57
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0

    .line 61
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    throw p0
.end method

.method public final updateAmbientLightListener()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/server/input/InputFeatureFlagProvider;->isAmbientKeyboardBacklightControlEnabled()Z

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
    const/4 v0, 0x0

    .line 9
    move v1, v0

    .line 10
    :goto_0
    iget-object v2, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-ge v0, v2, :cond_1

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;

    .line 25
    .line 26
    iget-boolean v2, v2, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mUseAmbientController:Z

    .line 27
    .line 28
    or-int/2addr v1, v2

    .line 29
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mIsInteractive:Z

    .line 33
    .line 34
    and-int/2addr v0, v1

    .line 35
    if-eqz v0, :cond_4

    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mAmbientListener:Lcom/android/server/input/KeyboardBacklightController$$ExternalSyntheticLambda1;

    .line 38
    .line 39
    if-nez v1, :cond_4

    .line 40
    .line 41
    new-instance v1, Lcom/android/server/input/KeyboardBacklightController$$ExternalSyntheticLambda1;

    .line 42
    .line 43
    invoke-direct {v1, p0}, Lcom/android/server/input/KeyboardBacklightController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/input/KeyboardBacklightController;)V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mAmbientListener:Lcom/android/server/input/KeyboardBacklightController$$ExternalSyntheticLambda1;

    .line 47
    .line 48
    iget-object v2, p0, Lcom/android/server/input/KeyboardBacklightController;->mAmbientController:Lcom/android/server/input/AmbientKeyboardBacklightController;

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    const-string v3, "AmbientKeyboardBacklightListener was already registered, listener = "

    .line 54
    .line 55
    sget-object v4, Lcom/android/server/input/AmbientKeyboardBacklightController;->sAmbientControllerLock:Ljava/lang/Object;

    .line 56
    .line 57
    monitor-enter v4

    .line 58
    :try_start_0
    iget-object v5, v2, Lcom/android/server/input/AmbientKeyboardBacklightController;->mAmbientKeyboardBacklightListeners:Ljava/util/List;

    .line 59
    .line 60
    check-cast v5, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-nez v5, :cond_3

    .line 67
    .line 68
    iget-object v3, v2, Lcom/android/server/input/AmbientKeyboardBacklightController;->mAmbientKeyboardBacklightListeners:Ljava/util/List;

    .line 69
    .line 70
    check-cast v3, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_2

    .line 77
    .line 78
    iget-object v3, v2, Lcom/android/server/input/AmbientKeyboardBacklightController;->mLightSensor:Landroid/hardware/Sensor;

    .line 79
    .line 80
    invoke-virtual {v2, v3}, Lcom/android/server/input/AmbientKeyboardBacklightController;->addSensorListener(Landroid/hardware/Sensor;)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :catchall_0
    move-exception p0

    .line 85
    goto :goto_2

    .line 86
    :cond_2
    :goto_1
    iget-object v2, v2, Lcom/android/server/input/AmbientKeyboardBacklightController;->mAmbientKeyboardBacklightListeners:Ljava/util/List;

    .line 87
    .line 88
    check-cast v2, Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    monitor-exit v4

    .line 94
    goto :goto_3

    .line 95
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 96
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p0

    .line 113
    :goto_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    throw p0

    .line 115
    :cond_4
    :goto_3
    if-nez v0, :cond_7

    .line 116
    .line 117
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mAmbientListener:Lcom/android/server/input/KeyboardBacklightController$$ExternalSyntheticLambda1;

    .line 118
    .line 119
    if-eqz v0, :cond_7

    .line 120
    .line 121
    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mAmbientController:Lcom/android/server/input/AmbientKeyboardBacklightController;

    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    const-string v2, "AmbientKeyboardBacklightListener was never registered, listener = "

    .line 127
    .line 128
    sget-object v3, Lcom/android/server/input/AmbientKeyboardBacklightController;->sAmbientControllerLock:Ljava/lang/Object;

    .line 129
    .line 130
    monitor-enter v3

    .line 131
    :try_start_1
    iget-object v4, v1, Lcom/android/server/input/AmbientKeyboardBacklightController;->mAmbientKeyboardBacklightListeners:Ljava/util/List;

    .line 132
    .line 133
    check-cast v4, Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    if-eqz v4, :cond_6

    .line 140
    .line 141
    iget-object v2, v1, Lcom/android/server/input/AmbientKeyboardBacklightController;->mAmbientKeyboardBacklightListeners:Ljava/util/List;

    .line 142
    .line 143
    check-cast v2, Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    iget-object v0, v1, Lcom/android/server/input/AmbientKeyboardBacklightController;->mAmbientKeyboardBacklightListeners:Ljava/util/List;

    .line 149
    .line 150
    check-cast v0, Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-eqz v0, :cond_5

    .line 157
    .line 158
    iget-object v0, v1, Lcom/android/server/input/AmbientKeyboardBacklightController;->mLightSensor:Landroid/hardware/Sensor;

    .line 159
    .line 160
    invoke-virtual {v1, v0}, Lcom/android/server/input/AmbientKeyboardBacklightController;->removeSensorListener(Landroid/hardware/Sensor;)V

    .line 161
    .line 162
    .line 163
    goto :goto_4

    .line 164
    :catchall_1
    move-exception p0

    .line 165
    goto :goto_5

    .line 166
    :cond_5
    :goto_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 167
    const/4 v0, 0x0

    .line 168
    iput-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mAmbientListener:Lcom/android/server/input/KeyboardBacklightController$$ExternalSyntheticLambda1;

    .line 169
    .line 170
    goto :goto_6

    .line 171
    :cond_6
    :try_start_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 172
    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw p0

    .line 189
    :goto_5
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 190
    throw p0

    .line 191
    :cond_7
    :goto_6
    return-void
.end method

.method public final updateKeyboardBacklight(ILcom/android/server/input/KeyboardBacklightController$Direction;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mContext:Landroid/content/Context;

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
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;

    .line 26
    .line 27
    if-eqz v0, :cond_b

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    goto/16 :goto_9

    .line 32
    .line 33
    :cond_1
    iget-boolean v2, v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mUseAmbientController:Z

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    const/4 v4, 0x1

    .line 37
    if-eqz v2, :cond_3

    .line 38
    .line 39
    iget-object v2, v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mBrightnessValueForLevel:[I

    .line 40
    .line 41
    iget v5, p0, Lcom/android/server/input/KeyboardBacklightController;->mAmbientBacklightValue:I

    .line 42
    .line 43
    invoke-static {v2, v5}, Ljava/util/Arrays;->binarySearch([II)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-gez v2, :cond_4

    .line 48
    .line 49
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    neg-int v2, v2

    .line 52
    sub-int/2addr v2, v4

    .line 53
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    sget-object v5, Lcom/android/server/input/KeyboardBacklightController$Direction;->DIRECTION_UP:Lcom/android/server/input/KeyboardBacklightController$Direction;

    .line 58
    .line 59
    if-ne p2, v5, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    iget v2, v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mBrightnessLevel:I

    .line 66
    .line 67
    :cond_4
    :goto_1
    sget-object v5, Lcom/android/server/input/KeyboardBacklightController$Direction;->DIRECTION_UP:Lcom/android/server/input/KeyboardBacklightController$Direction;

    .line 68
    .line 69
    if-ne p2, v5, :cond_5

    .line 70
    .line 71
    add-int/2addr v2, v4

    .line 72
    iget-object p2, v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mBrightnessValueForLevel:[I

    .line 73
    .line 74
    array-length p2, p2

    .line 75
    sub-int/2addr p2, v4

    .line 76
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    goto :goto_2

    .line 81
    :cond_5
    sub-int/2addr v2, v4

    .line 82
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    :goto_2
    iput-boolean v3, v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mUseAmbientController:Z

    .line 87
    .line 88
    iget-object v2, v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->this$0:Lcom/android/server/input/KeyboardBacklightController;

    .line 89
    .line 90
    iget-boolean v2, v2, Lcom/android/server/input/KeyboardBacklightController;->mIsBacklightOn:Z

    .line 91
    .line 92
    if-eqz v2, :cond_6

    .line 93
    .line 94
    iget-object v2, v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mBrightnessValueForLevel:[I

    .line 95
    .line 96
    aget v2, v2, p2

    .line 97
    .line 98
    invoke-virtual {v1, v2}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->setBacklightValue(I)V

    .line 99
    .line 100
    .line 101
    :cond_6
    iput p2, v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mBrightnessLevel:I

    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardBacklightController;->updateAmbientLightListener()V

    .line 104
    .line 105
    .line 106
    iget-object v2, v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mLight:Landroid/hardware/lights/Light;

    .line 107
    .line 108
    iget-object v5, v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mBrightnessValueForLevel:[I

    .line 109
    .line 110
    aget v5, v5, p2

    .line 111
    .line 112
    invoke-static {}, Lcom/android/server/input/InputFeatureFlagProvider;->isAmbientKeyboardBacklightControlEnabled()Z

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    if-eqz v6, :cond_7

    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_7
    iget-object v6, p0, Lcom/android/server/input/KeyboardBacklightController;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 120
    .line 121
    monitor-enter v6

    .line 122
    :try_start_0
    iget-object v7, p0, Lcom/android/server/input/KeyboardBacklightController;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 123
    .line 124
    invoke-virtual {v0}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v2}, Landroid/hardware/lights/Light;->getId()I

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    invoke-virtual {v7, v0}, Lcom/android/server/input/PersistentDataStore;->getOrCreateInputDeviceState(Ljava/lang/String;)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    iget-object v8, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardBacklightBrightnessMap:Landroid/util/SparseIntArray;

    .line 137
    .line 138
    const/4 v9, -0x1

    .line 139
    invoke-virtual {v8, v2, v9}, Landroid/util/SparseIntArray;->get(II)I

    .line 140
    .line 141
    .line 142
    move-result v8

    .line 143
    if-ne v8, v5, :cond_8

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_8
    iget-object v0, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardBacklightBrightnessMap:Landroid/util/SparseIntArray;

    .line 147
    .line 148
    invoke-virtual {v0, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 149
    .line 150
    .line 151
    iput-boolean v4, v7, Lcom/android/server/input/PersistentDataStore;->mDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 152
    .line 153
    :goto_3
    :try_start_1
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 154
    .line 155
    invoke-virtual {v0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 156
    .line 157
    .line 158
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 159
    :goto_4
    sget-boolean v0, Lcom/android/server/input/KeyboardBacklightController;->DEBUG:Z

    .line 160
    .line 161
    if-eqz v0, :cond_9

    .line 162
    .line 163
    const-string v0, "KbdBacklightController"

    .line 164
    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string v5, "Changing state from "

    .line 168
    .line 169
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget v5, v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mBrightnessLevel:I

    .line 173
    .line 174
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v5, " to "

    .line 178
    .line 179
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    :cond_9
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

    .line 193
    .line 194
    monitor-enter v0

    .line 195
    :goto_5
    :try_start_2
    iget-object v2, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

    .line 196
    .line 197
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    if-ge v3, v2, :cond_a

    .line 202
    .line 203
    new-instance v2, Landroid/hardware/input/IKeyboardBacklightState;

    .line 204
    .line 205
    invoke-direct {v2}, Landroid/hardware/input/IKeyboardBacklightState;-><init>()V

    .line 206
    .line 207
    .line 208
    iput p2, v2, Landroid/hardware/input/IKeyboardBacklightState;->brightnessLevel:I

    .line 209
    .line 210
    iget-object v5, v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mBrightnessValueForLevel:[I

    .line 211
    .line 212
    array-length v5, v5

    .line 213
    sub-int/2addr v5, v4

    .line 214
    iput v5, v2, Landroid/hardware/input/IKeyboardBacklightState;->maxBrightnessLevel:I

    .line 215
    .line 216
    iget-object v5, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

    .line 217
    .line 218
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    check-cast v5, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;

    .line 223
    .line 224
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 225
    .line 226
    .line 227
    :try_start_3
    iget-object v6, v5, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;->mListener:Landroid/hardware/input/IKeyboardBacklightListener;

    .line 228
    .line 229
    invoke-interface {v6, p1, v2, v4}, Landroid/hardware/input/IKeyboardBacklightListener;->onBrightnessChanged(ILandroid/hardware/input/IKeyboardBacklightState;Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 230
    .line 231
    .line 232
    goto :goto_6

    .line 233
    :catch_0
    move-exception v2

    .line 234
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    const-string v7, "Failed to notify process "

    .line 237
    .line 238
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    iget v7, v5, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;->mPid:I

    .line 242
    .line 243
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    const-string v7, " that keyboard backlight changed, assuming it died."

    .line 247
    .line 248
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v6

    .line 255
    const-string v7, "KbdBacklightController"

    .line 256
    .line 257
    invoke-static {v7, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    .line 259
    .line 260
    invoke-virtual {v5}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;->binderDied()V

    .line 261
    .line 262
    .line 263
    :goto_6
    add-int/lit8 v3, v3, 0x1

    .line 264
    .line 265
    goto :goto_5

    .line 266
    :catchall_0
    move-exception p0

    .line 267
    goto :goto_7

    .line 268
    :cond_a
    monitor-exit v0

    .line 269
    return-void

    .line 270
    :goto_7
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 271
    throw p0

    .line 272
    :catchall_1
    move-exception p0

    .line 273
    goto :goto_8

    .line 274
    :catchall_2
    move-exception p1

    .line 275
    :try_start_5
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 276
    .line 277
    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 278
    .line 279
    .line 280
    throw p1

    .line 281
    :goto_8
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 282
    throw p0

    .line 283
    :cond_b
    :goto_9
    return-void
.end method
