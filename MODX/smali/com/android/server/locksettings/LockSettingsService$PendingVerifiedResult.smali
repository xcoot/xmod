.class public final Lcom/android/server/locksettings/LockSettingsService$PendingVerifiedResult;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDualDARCallback:Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;

.field public final mPasswordMetrics:Landroid/app/admin/PasswordMetrics;

.field public final mSyntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Landroid/app/admin/PasswordMetrics;Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$PendingVerifiedResult;->mSyntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 6
    iput-object p2, p0, Lcom/android/server/locksettings/LockSettingsService$PendingVerifiedResult;->mPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    .line 8
    iput-object p3, p0, Lcom/android/server/locksettings/LockSettingsService$PendingVerifiedResult;->mDualDARCallback:Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;

    .line 10
    return-void
.end method
