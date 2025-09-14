.class public final synthetic Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/locksettings/RebootEscrowManager;

.field public final synthetic f$1:Landroid/os/Handler;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/util/List;

.field public final synthetic f$4:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(ILandroid/os/Handler;Lcom/android/server/locksettings/RebootEscrowManager;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p3, p0, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/locksettings/RebootEscrowManager;

    .line 6
    iput-object p2, p0, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda5;->f$1:Landroid/os/Handler;

    .line 8
    iput p1, p0, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda5;->f$2:I

    .line 10
    iput-object p4, p0, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda5;->f$3:Ljava/util/List;

    .line 12
    iput-object p5, p0, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda5;->f$4:Ljava/util/List;

    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/locksettings/RebootEscrowManager;

    .line 3
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda5;->f$1:Landroid/os/Handler;

    .line 5
    iget v2, p0, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda5;->f$2:I

    .line 7
    iget-object v3, p0, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda5;->f$3:Ljava/util/List;

    .line 9
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda5;->f$4:Ljava/util/List;

    .line 11
    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/server/locksettings/RebootEscrowManager;->loadRebootEscrowDataWithRetry(Landroid/os/Handler;ILjava/util/List;Ljava/util/List;)V

    .line 14
    return-void
.end method
