.class public final synthetic Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/locksettings/LockSettingsService;

.field public final synthetic f$1:Lcom/android/internal/widget/LockscreenCredential;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/internal/widget/LockscreenCredential;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda3;->f$1:Lcom/android/internal/widget/LockscreenCredential;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda3;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda3;->f$1:Lcom/android/internal/widget/LockscreenCredential;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda3;->f$2:I

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v1}, Landroid/app/admin/PasswordMetrics;->computeForCredential(Lcom/android/internal/widget/LockscreenCredential;)Landroid/app/admin/PasswordMetrics;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1, p0}, Landroid/app/admin/DevicePolicyManager;->reportPasswordChanged(Landroid/app/admin/PasswordMetrics;I)V

    .line 18
    .line 19
    .line 20
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerInternal;->reportPasswordChanged(I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
