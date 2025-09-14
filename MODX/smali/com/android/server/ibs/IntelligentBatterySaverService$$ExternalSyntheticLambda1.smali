.class public final synthetic Lcom/android/server/ibs/IntelligentBatterySaverService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$$ExternalSyntheticLambda1;->f$0:Ljava/io/PrintWriter;

    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$$ExternalSyntheticLambda1;->f$0:Ljava/io/PrintWriter;

    .line 3
    check-cast p1, Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    .line 5
    iget-boolean v0, p1, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->mIsUsed:Z

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 12
    const-string v0, "SleepModeLogger history Log:"

    .line 14
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 17
    iget-object p1, p1, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->mSleepModeLog:Landroid/util/LocalLog;

    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, v0, p0, v0}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 26
    :cond_0
    return-void
.end method
