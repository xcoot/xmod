.class public final synthetic Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/SameProcessApplicationThread;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$10:I

.field public final synthetic f$11:I

.field public final synthetic f$12:Ljava/lang/String;

.field public final synthetic f$2:Landroid/content/pm/ActivityInfo;

.field public final synthetic f$3:Landroid/content/res/CompatibilityInfo;

.field public final synthetic f$4:I

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:Landroid/os/Bundle;

.field public final synthetic f$7:Z

.field public final synthetic f$8:Z

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/SameProcessApplicationThread;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZZIIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/SameProcessApplicationThread;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda0;->f$2:Landroid/content/pm/ActivityInfo;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda0;->f$3:Landroid/content/res/CompatibilityInfo;

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda0;->f$4:I

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda0;->f$5:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda0;->f$6:Landroid/os/Bundle;

    .line 17
    .line 18
    iput-boolean p8, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda0;->f$7:Z

    .line 19
    .line 20
    iput-boolean p9, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda0;->f$8:Z

    .line 21
    .line 22
    iput p10, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda0;->f$9:I

    .line 23
    .line 24
    iput p11, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda0;->f$10:I

    .line 25
    .line 26
    iput p12, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda0;->f$11:I

    .line 27
    .line 28
    iput-object p13, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda0;->f$12:Ljava/lang/String;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/SameProcessApplicationThread;

    .line 2
    .line 3
    iget-object v2, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda0;->f$2:Landroid/content/pm/ActivityInfo;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda0;->f$3:Landroid/content/res/CompatibilityInfo;

    .line 8
    .line 9
    iget v5, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda0;->f$4:I

    .line 10
    .line 11
    iget-object v6, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda0;->f$5:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v7, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda0;->f$6:Landroid/os/Bundle;

    .line 14
    .line 15
    iget-boolean v8, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda0;->f$7:Z

    .line 16
    .line 17
    iget-boolean v9, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda0;->f$8:Z

    .line 18
    .line 19
    iget v10, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda0;->f$9:I

    .line 20
    .line 21
    iget v11, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda0;->f$10:I

    .line 22
    .line 23
    iget v12, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda0;->f$11:I

    .line 24
    .line 25
    iget-object v13, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda0;->f$12:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/SameProcessApplicationThread;->mWrapped:Landroid/app/IApplicationThread;

    .line 31
    .line 32
    invoke-interface/range {v1 .. v13}, Landroid/app/IApplicationThread;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZZIIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catch_0
    move-exception p0

    .line 37
    new-instance v0, Ljava/lang/RuntimeException;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    throw v0
.end method
