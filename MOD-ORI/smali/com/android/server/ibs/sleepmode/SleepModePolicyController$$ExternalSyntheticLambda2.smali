.class public final synthetic Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 2
    .line 3
    check-cast p1, Landroid/net/Uri;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string/jumbo v0, "com.samsung.android.statsd"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    const-string p1, "SleepModePolicyController"

    .line 26
    .line 27
    const-string/jumbo v0, "sendPackageRemovedMessage"

    .line 28
    .line 29
    .line 30
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    const/16 p1, 0xa

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method
