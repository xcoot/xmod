.class public final Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mEnabled:Z

.field public mEnabledSet:Z

.field public final mFlagFunction:Ljava/util/function/Supplier;

.field public final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/function/Supplier;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->mName:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->mFlagFunction:Ljava/util/function/Supplier;

    .line 8
    return-void
.end method


# virtual methods
.method public final isEnabled()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->mEnabledSet:Z

    .line 3
    const-string v1, "DisplayManagerFlags"

    .line 5
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->mName:Ljava/lang/String;

    .line 7
    if-eqz v0, :cond_1

    .line 9
    sget-boolean v0, Lcom/android/server/display/feature/DisplayManagerFlags;->DEBUG:Z

    .line 11
    if-eqz v0, :cond_0

    .line 13
    const-string v0, ": mEnabled. Recall = "

    .line 15
    invoke-static {v2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    move-result-object v0

    .line 19
    iget-boolean v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->mEnabled:Z

    .line 21
    invoke-static {v1, v0, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 24
    :cond_0
    iget-boolean p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->mEnabled:Z

    .line 26
    return p0

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->mFlagFunction:Ljava/util/function/Supplier;

    .line 29
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/Boolean;

    .line 35
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    move-result v0

    .line 39
    sget-boolean v3, Landroid/os/Build;->IS_ENG:Z

    .line 41
    if-nez v3, :cond_2

    .line 43
    sget-boolean v3, Landroid/os/Build;->IS_USERDEBUG:Z

    .line 45
    if-eqz v3, :cond_3

    .line 47
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 49
    const-string/jumbo v4, "persist.sys."

    .line 52
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v4, "-override"

    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v3

    .line 67
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 70
    move-result v0

    .line 71
    :cond_3
    iput-boolean v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->mEnabled:Z

    .line 73
    sget-boolean v0, Lcom/android/server/display/feature/DisplayManagerFlags;->DEBUG:Z

    .line 75
    if-eqz v0, :cond_4

    .line 77
    const-string v0, ": mEnabled. Flag value = "

    .line 79
    invoke-static {v2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    move-result-object v0

    .line 83
    iget-boolean v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->mEnabled:Z

    .line 85
    invoke-static {v1, v0, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 88
    :cond_4
    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->mEnabledSet:Z

    .line 91
    iget-boolean p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->mEnabled:Z

    .line 93
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->mName:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    move-result v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    const/16 v3, 0x29

    .line 14
    invoke-static {v0, v3, v1}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v0, ": "

    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    const-string v3, "%"

    .line 30
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    rsub-int/lit8 v1, v1, 0x5d

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    const-string/jumbo v1, "s%s"

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 51
    move-result v1

    .line 52
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 55
    move-result-object v1

    .line 56
    const-string v3, " "

    .line 58
    filled-new-array {v3, v1}, [Ljava/lang/Object;

    .line 61
    move-result-object v1

    .line 62
    invoke-static {v0, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v0, " (def:"

    .line 71
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->mFlagFunction:Ljava/util/function/Supplier;

    .line 76
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    const-string p0, ")"

    .line 85
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object p0

    .line 92
    return-object p0
.end method
