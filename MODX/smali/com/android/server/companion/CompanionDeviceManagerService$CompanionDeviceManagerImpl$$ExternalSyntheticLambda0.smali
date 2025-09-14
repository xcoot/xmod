.class public final synthetic Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;Ljava/lang/String;IILandroid/content/ComponentName;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;

    .line 6
    iput-object p2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 8
    iput p3, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl$$ExternalSyntheticLambda0;->f$2:I

    .line 10
    iput p4, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl$$ExternalSyntheticLambda0;->f$3:I

    .line 12
    iput-object p5, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl$$ExternalSyntheticLambda0;->f$4:Landroid/content/ComponentName;

    .line 14
    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;

    .line 3
    iget-object v7, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 5
    iget v3, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl$$ExternalSyntheticLambda0;->f$2:I

    .line 7
    iget v8, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl$$ExternalSyntheticLambda0;->f$3:I

    .line 9
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl$$ExternalSyntheticLambda0;->f$4:Landroid/content/ComponentName;

    .line 11
    iget-object v1, v0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 13
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v1

    .line 17
    sget-object v2, Lcom/android/server/companion/utils/PackageUtils;->COMPANION_SERVICE_INTENT:Landroid/content/Intent;

    .line 19
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->enhancedConfirmationModeApisEnabled()Z

    .line 22
    move-result v2

    .line 23
    const-string v9, "android:access_notifications"

    .line 25
    const/4 v10, 0x1

    .line 26
    if-eqz v2, :cond_0

    .line 28
    const-class v2, Landroid/app/ecm/EnhancedConfirmationManager;

    .line 30
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Landroid/app/ecm/EnhancedConfirmationManager;

    .line 36
    :try_start_0
    invoke-virtual {v1, v7, v9}, Landroid/app/ecm/EnhancedConfirmationManager;->isRestricted(Ljava/lang/String;Ljava/lang/String;)Z

    .line 39
    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    xor-int/2addr v10, v1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const-class v2, Landroid/app/AppOpsManager;

    .line 44
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Landroid/app/AppOpsManager;

    .line 50
    const/4 v5, 0x0

    .line 51
    const/4 v6, 0x0

    .line 52
    const/16 v2, 0x77

    .line 54
    move-object v4, v7

    .line 55
    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_2

    .line 61
    const/4 v2, 0x3

    .line 62
    if-ne v1, v2, :cond_1

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    const/4 v10, 0x0

    .line 66
    :catch_0
    :cond_2
    :goto_0
    if-nez v10, :cond_4

    .line 68
    const-string p0, "CDM_CompanionDeviceManagerService"

    .line 70
    const-string v1, "Side loaded app must enable restricted setting before request the notification access"

    .line 72
    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->enhancedConfirmationModeApisEnabled()Z

    .line 78
    move-result p0

    .line 79
    if-eqz p0, :cond_3

    .line 81
    iget-object p0, v0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 83
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 86
    move-result-object p0

    .line 87
    const-class v1, Landroid/app/ecm/EnhancedConfirmationManager;

    .line 89
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 92
    move-result-object p0

    .line 93
    check-cast p0, Landroid/app/ecm/EnhancedConfirmationManager;

    .line 95
    invoke-virtual {p0, v7, v9}, Landroid/app/ecm/EnhancedConfirmationManager;->createRestrictedSettingDialogIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    move-result-object p0

    .line 99
    :goto_1
    move-object v3, p0

    .line 100
    goto :goto_2

    .line 101
    :cond_3
    const/4 p0, 0x0

    .line 102
    goto :goto_3

    .line 103
    :cond_4
    iget-object v1, v0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 105
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 108
    move-result-object v1

    .line 109
    invoke-static {v1, v8, p0}, Lcom/android/internal/notification/NotificationAccessConfirmationActivityContract;->launcherIntent(Landroid/content/Context;ILandroid/content/ComponentName;)Landroid/content/Intent;

    .line 112
    move-result-object p0

    .line 113
    goto :goto_1

    .line 114
    :goto_2
    iget-object p0, v0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 116
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 119
    move-result-object v1

    .line 120
    new-instance v6, Landroid/os/UserHandle;

    .line 122
    invoke-direct {v6, v8}, Landroid/os/UserHandle;-><init>(I)V

    .line 125
    const/4 v5, 0x0

    .line 126
    const/4 v2, 0x0

    .line 127
    const/high16 v4, 0x54000000

    .line 129
    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 132
    move-result-object p0

    .line 133
    :goto_3
    return-object p0
.end method
