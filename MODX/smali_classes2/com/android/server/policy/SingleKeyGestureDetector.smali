.class public final Lcom/android/server/policy/SingleKeyGestureDetector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z

.field public static final KEYCODE_KEY_DISPATCHING_ALLOWLIST:Ljava/util/Set;

.field public static final MULTI_PRESS_TIMEOUT:J

.field public static mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

.field public static sDefaultLongPressTimeout:J

.field public static sDefaultMultiPressTimeout:J

.field public static sDefaultVeryLongPressTimeout:J


# instance fields
.field public mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

.field public mBeganFromDefaultDisplayOn:Z

.field public mBeganFromNonInteractive:Z

.field public final mCustomRules:Landroid/util/SparseArray;

.field public mDownKeyCode:I

.field public final mHandleLongPressInfo:Lcom/android/server/policy/SingleKeyGestureDetector$HandleLongPressInfo;

.field public mHandledByLongPress:Z

.field public final mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

.field public mKeyPressCounter:I

.field public volatile mKeyReleaseTime:J

.field public mLastDownTime:J

.field public mLastUpTime:J

.field public mTriggeredMultiPressTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/android/server/policy/SingleKeyGestureDetector;->DEBUG:Z

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    sput-object v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 7
    .line 8
    new-instance v0, Landroid/util/ArraySet;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/android/server/policy/SingleKeyGestureDetector;->KEYCODE_KEY_DISPATCHING_ALLOWLIST:Ljava/util/Set;

    .line 14
    .line 15
    const/4 v1, 0x4

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    const/16 v1, 0x18

    .line 24
    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    const/16 v1, 0x19

    .line 33
    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    const/16 v1, 0x4f

    .line 42
    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    const-wide/16 v0, 0xaa

    .line 51
    .line 52
    sput-wide v0, Lcom/android/server/policy/SingleKeyGestureDetector;->MULTI_PRESS_TIMEOUT:J

    .line 53
    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mBeganFromNonInteractive:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mBeganFromDefaultDisplayOn:Z

    .line 8
    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v1, Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mCustomRules:Landroid/util/SparseArray;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 23
    .line 24
    iput v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mDownKeyCode:I

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    .line 27
    .line 28
    const-wide/16 v0, 0x0

    .line 29
    .line 30
    iput-wide v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    .line 31
    .line 32
    iput-wide v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastUpTime:J

    .line 33
    .line 34
    new-instance v2, Lcom/android/server/policy/SingleKeyGestureDetector$HandleLongPressInfo;

    .line 35
    .line 36
    invoke-direct {v2}, Lcom/android/server/policy/SingleKeyGestureDetector$HandleLongPressInfo;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandleLongPressInfo:Lcom/android/server/policy/SingleKeyGestureDetector$HandleLongPressInfo;

    .line 40
    .line 41
    iput-wide v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyReleaseTime:J

    .line 42
    .line 43
    new-instance v0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 44
    .line 45
    invoke-direct {v0, p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;-><init>(Lcom/android/server/policy/SingleKeyGestureDetector;Landroid/os/Looper;)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public final addRule(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mCustomRules:Landroid/util/SparseArray;

    .line 2
    .line 3
    iget v1, p1, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->contains(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mCustomRules:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {p0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v1, "Rule : "

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p1, " already exists."

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p0
.end method

.method public final hasRule(I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mCustomRules:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    .line 14
    .line 15
    if-ne p1, p0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    :cond_1
    return v0
.end method

.method public final reset()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    new-instance v0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;

    .line 7
    .line 8
    iget-object v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 9
    .line 10
    iget v4, v3, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    .line 11
    .line 12
    iget v5, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v8, 0x0

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v9, 0x0

    .line 18
    move-object v2, v0

    .line 19
    invoke-direct/range {v2 .. v9}, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;-><init>(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;IIILandroid/view/KeyEvent;II)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 23
    .line 24
    const/4 v3, 0x6

    .line 25
    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 31
    .line 32
    .line 33
    iget-object v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 34
    .line 35
    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 36
    .line 37
    .line 38
    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mDownKeyCode:I

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 50
    .line 51
    .line 52
    :cond_0
    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 53
    .line 54
    if-lez v0, :cond_1

    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 57
    .line 58
    const/4 v2, 0x2

    .line 59
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 60
    .line 61
    .line 62
    iput v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 63
    .line 64
    :cond_1
    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 66
    .line 67
    const-wide/16 v2, 0x0

    .line 68
    .line 69
    iput-wide v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastUpTime:J

    .line 70
    .line 71
    iput-wide v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mTriggeredMultiPressTime:J

    .line 72
    .line 73
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_SKIP_TOO_FAST_DOUBLE_PRESS:Z

    .line 74
    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    iput-wide v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyReleaseTime:J

    .line 78
    .line 79
    :cond_2
    iput-boolean v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    .line 80
    .line 81
    iput v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mDownKeyCode:I

    .line 82
    .line 83
    return-void
.end method
