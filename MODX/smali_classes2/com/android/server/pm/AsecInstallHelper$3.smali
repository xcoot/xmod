.class public final Lcom/android/server/pm/AsecInstallHelper$3;
.super Landroid/content/IIntentReceiver$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/AsecInstallHelper;

.field public final synthetic val$keys:Ljava/util/Set;

.field public final synthetic val$reportStatus:Z


# direct methods
.method public constructor <init>(Lcom/android/server/pm/AsecInstallHelper;ZLjava/util/Set;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/AsecInstallHelper$3;->this$0:Lcom/android/server/pm/AsecInstallHelper;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/android/server/pm/AsecInstallHelper$3;->val$reportStatus:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/pm/AsecInstallHelper$3;->val$keys:Ljava/util/Set;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 0

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string p3, "do force gc after sending broadcast: "

    .line 4
    .line 5
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string p2, "PackageManager"

    .line 16
    .line 17
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    new-instance p1, Ljava/lang/Thread;

    .line 21
    .line 22
    iget-boolean p2, p0, Lcom/android/server/pm/AsecInstallHelper$3;->val$reportStatus:Z

    .line 23
    .line 24
    iget-object p3, p0, Lcom/android/server/pm/AsecInstallHelper$3;->val$keys:Ljava/util/Set;

    .line 25
    .line 26
    new-instance p4, Lcom/android/server/pm/AsecInstallHelper$3$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    invoke-direct {p4, p0, p2, p3}, Lcom/android/server/pm/AsecInstallHelper$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/AsecInstallHelper$3;ZLjava/util/Set;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, p4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 35
    .line 36
    .line 37
    return-void
.end method
