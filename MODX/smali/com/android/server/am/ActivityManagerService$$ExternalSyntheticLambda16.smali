.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:I

.field public final synthetic f$4:[Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(ZIZI[Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda16;->f$0:Z

    .line 6
    iput p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda16;->f$1:I

    .line 8
    iput-boolean p3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda16;->f$2:Z

    .line 10
    iput p4, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda16;->f$3:I

    .line 12
    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda16;->f$4:[Ljava/util/List;

    .line 14
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda16;->f$0:Z

    .line 3
    iget v1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda16;->f$1:I

    .line 5
    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda16;->f$2:Z

    .line 7
    iget v3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda16;->f$3:I

    .line 9
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda16;->f$4:[Ljava/util/List;

    .line 11
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 13
    if-nez v0, :cond_0

    .line 15
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 17
    if-eq v0, v1, :cond_0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    if-nez v2, :cond_1

    .line 22
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 24
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 26
    if-eq v0, v3, :cond_1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 31
    iget-boolean v1, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    .line 33
    iget-boolean v2, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotResponding:Z

    .line 35
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 37
    if-eqz v3, :cond_7

    .line 39
    if-nez v1, :cond_2

    .line 41
    if-eqz v2, :cond_7

    .line 43
    :cond_2
    if-eqz v1, :cond_3

    .line 45
    iget-object v0, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 47
    goto :goto_0

    .line 48
    :cond_3
    if-eqz v2, :cond_4

    .line 50
    iget-object v0, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 52
    goto :goto_0

    .line 53
    :cond_4
    const/4 v0, 0x0

    .line 54
    :goto_0
    if-eqz v0, :cond_6

    .line 56
    const/4 p1, 0x0

    .line 57
    aget-object v1, p0, p1

    .line 59
    if-nez v1, :cond_5

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    .line 63
    const/4 v2, 0x1

    .line 64
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    aput-object v1, p0, p1

    .line 69
    :cond_5
    aget-object p0, p0, p1

    .line 71
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    goto :goto_1

    .line 75
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 77
    const-string v0, "Missing app error report, app = "

    .line 79
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 84
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string p1, " crashing = "

    .line 89
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 95
    const-string p1, " notResponding = "

    .line 97
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object p0

    .line 107
    const-string p1, "ActivityManager"

    .line 109
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_7
    :goto_1
    return-void
.end method
