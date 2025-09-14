.class public final synthetic Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/SameProcessApplicationThread;

.field public final synthetic f$1:Landroid/content/IIntentReceiver;

.field public final synthetic f$10:I

.field public final synthetic f$11:I

.field public final synthetic f$12:Ljava/lang/String;

.field public final synthetic f$2:Landroid/content/Intent;

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Landroid/os/Bundle;

.field public final synthetic f$6:Z

.field public final synthetic f$7:Z

.field public final synthetic f$8:Z

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/SameProcessApplicationThread;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/SameProcessApplicationThread;

    .line 6
    iput-object p2, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$1:Landroid/content/IIntentReceiver;

    .line 8
    iput-object p3, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$2:Landroid/content/Intent;

    .line 10
    iput p4, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$3:I

    .line 12
    iput-object p5, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    .line 14
    iput-object p6, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$5:Landroid/os/Bundle;

    .line 16
    iput-boolean p7, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$6:Z

    .line 18
    iput-boolean p8, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$7:Z

    .line 20
    iput-boolean p9, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$8:Z

    .line 22
    iput p10, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$9:I

    .line 24
    iput p11, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$10:I

    .line 26
    iput p12, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$11:I

    .line 28
    iput-object p13, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$12:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/SameProcessApplicationThread;

    .line 3
    iget-object v2, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$1:Landroid/content/IIntentReceiver;

    .line 5
    iget-object v3, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$2:Landroid/content/Intent;

    .line 7
    iget v4, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$3:I

    .line 9
    iget-object v5, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    .line 11
    iget-object v6, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$5:Landroid/os/Bundle;

    .line 13
    iget-boolean v7, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$6:Z

    .line 15
    iget-boolean v8, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$7:Z

    .line 17
    iget-boolean v9, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$8:Z

    .line 19
    iget v10, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$9:I

    .line 21
    iget v11, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$10:I

    .line 23
    iget v12, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$11:I

    .line 25
    iget-object v13, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$12:Ljava/lang/String;

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/SameProcessApplicationThread;->mWrapped:Landroid/app/IApplicationThread;

    .line 32
    invoke-interface/range {v1 .. v13}, Landroid/app/IApplicationThread;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    return-void

    .line 36
    :catch_0
    move-exception p0

    .line 37
    new-instance v0, Ljava/lang/RuntimeException;

    .line 39
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 42
    throw v0
.end method
