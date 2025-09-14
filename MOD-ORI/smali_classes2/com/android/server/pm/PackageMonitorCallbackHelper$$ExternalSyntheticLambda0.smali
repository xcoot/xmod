.class public final synthetic Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageMonitorCallbackHelper;

.field public final synthetic f$1:Landroid/os/RemoteCallbackList;

.field public final synthetic f$2:I

.field public final synthetic f$3:[I

.field public final synthetic f$4:Landroid/content/Intent;

.field public final synthetic f$5:Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageMonitorCallbackHelper;Landroid/os/RemoteCallbackList;I[ILandroid/content/Intent;Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/PackageMonitorCallbackHelper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda0;->f$1:Landroid/os/RemoteCallbackList;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda0;->f$3:[I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda0;->f$4:Landroid/content/Intent;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda0;->f$5:Ljava/util/function/BiFunction;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v1, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/PackageMonitorCallbackHelper;

    .line 2
    .line 3
    iget-object v6, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda0;->f$1:Landroid/os/RemoteCallbackList;

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda0;->f$3:[I

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda0;->f$4:Landroid/content/Intent;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda0;->f$5:Ljava/util/function/BiFunction;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance v7, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda1;

    .line 17
    .line 18
    move-object v5, p0

    .line 19
    check-cast v5, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;

    .line 20
    .line 21
    move-object v0, v7

    .line 22
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageMonitorCallbackHelper;I[ILandroid/content/Intent;Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v6, v7}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/BiConsumer;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
