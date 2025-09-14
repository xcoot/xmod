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

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$$ExternalSyntheticLambda1;->f$0:Ljava/io/PrintWriter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$$ExternalSyntheticLambda1;->f$0:Ljava/io/PrintWriter;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    .line 4
    .line 5
    iget-boolean v0, p1, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->mIsUsed:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 10
    .line 11
    .line 12
    const-string v0, "SleepModeLogger history Log:"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p1, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->mSleepModeLog:Landroid/util/LocalLog;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, v0, p0, v0}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
