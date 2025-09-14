.class public final synthetic Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda4;->f$0:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda4;->f$0:I

    .line 2
    .line 3
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManagerInternal;->reportSeparateProfileChallengeChanged(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
