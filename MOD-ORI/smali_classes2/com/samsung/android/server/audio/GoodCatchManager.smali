.class public final Lcom/samsung/android/server/audio/GoodCatchManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final SOUND_FUNC:[Ljava/lang/String;


# instance fields
.field public final mAudioStateListener:Lcom/samsung/android/server/audio/GoodCatchManager$1;

.field public final mModule:Ljava/lang/String;

.field public final mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

.field public final mSoundFunc:[Z

.field public final mVibrateStateListener:Lcom/samsung/android/server/audio/GoodCatchManager$1;

.field public mVibrationFunc:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string/jumbo v0, "mediavolume"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "playback"

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "ringermode"

    .line 8
    .line 9
    .line 10
    const-string v3, "callmode"

    .line 11
    .line 12
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/samsung/android/server/audio/GoodCatchManager;->SOUND_FUNC:[Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x4

    .line 6
    new-array v1, v1, [Z

    .line 7
    .line 8
    fill-array-data v1, :array_0

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSoundFunc:[Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mVibrationFunc:Z

    .line 14
    .line 15
    new-instance v1, Lcom/samsung/android/server/audio/GoodCatchManager$1;

    .line 16
    .line 17
    invoke-direct {v1, p0, v0}, Lcom/samsung/android/server/audio/GoodCatchManager$1;-><init>(Lcom/samsung/android/server/audio/GoodCatchManager;I)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/samsung/android/server/audio/GoodCatchManager$1;

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-direct {v0, p0, v2}, Lcom/samsung/android/server/audio/GoodCatchManager$1;-><init>(Lcom/samsung/android/server/audio/GoodCatchManager;I)V

    .line 24
    .line 25
    .line 26
    iput-object p2, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mModule:Ljava/lang/String;

    .line 27
    .line 28
    const-string v2, "AudioService"

    .line 29
    .line 30
    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    new-instance p2, Lcom/samsung/android/sepunion/SemGoodCatchManager;

    .line 37
    .line 38
    sget-object v0, Lcom/samsung/android/server/audio/GoodCatchManager;->SOUND_FUNC:[Ljava/lang/String;

    .line 39
    .line 40
    invoke-direct {p2, p1, v2, v0, v1}, Lcom/samsung/android/sepunion/SemGoodCatchManager;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;)V

    .line 41
    .line 42
    .line 43
    iput-object p2, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const-string v1, "VibratorService"

    .line 47
    .line 48
    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_1

    .line 53
    .line 54
    new-instance p2, Lcom/samsung/android/sepunion/SemGoodCatchManager;

    .line 55
    .line 56
    const-string/jumbo v2, "vibration"

    .line 57
    .line 58
    .line 59
    filled-new-array {v2}, [Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-direct {p2, p1, v1, v2, v0}, Lcom/samsung/android/sepunion/SemGoodCatchManager;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;)V

    .line 64
    .line 65
    .line 66
    iput-object p2, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    .line 67
    .line 68
    :cond_1
    :goto_0
    return-void

    .line 69
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
