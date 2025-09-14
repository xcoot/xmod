.class public final synthetic Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/locksettings/RebootEscrowManager;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/locksettings/RebootEscrowManager;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/locksettings/RebootEscrowManager;

    .line 6
    iput-boolean p2, p0, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda0;->f$1:Z

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/locksettings/RebootEscrowManager;

    .line 3
    iget-boolean p0, p0, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda0;->f$1:Z

    .line 5
    iget-object v0, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowListener:Lcom/android/internal/widget/RebootEscrowListener;

    .line 7
    invoke-interface {v0, p0}, Lcom/android/internal/widget/RebootEscrowListener;->onPreparedForReboot(Z)V

    .line 10
    return-void
.end method
