.class public final synthetic Lcom/android/server/flags/DynamicFlagBinderDelegate$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/flags/SyncableFlag;


# direct methods
.method public synthetic constructor <init>(Landroid/flags/SyncableFlag;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$$ExternalSyntheticLambda2;->f$0:Landroid/flags/SyncableFlag;

    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$$ExternalSyntheticLambda2;->f$0:Landroid/flags/SyncableFlag;

    .line 3
    check-cast p1, Landroid/flags/IFeatureFlagsCallback;

    .line 5
    :try_start_0
    invoke-interface {p1, p0}, Landroid/flags/IFeatureFlagsCallback;->onFlagChange(Landroid/flags/SyncableFlag;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    const-string p0, "FeatureFlagsService"

    .line 11
    const-string p1, "Failed to communicate flag change to client."

    .line 13
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :goto_0
    return-void
.end method
