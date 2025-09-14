.class public final Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final getDexLaumcherConfiguration()Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getEKM()Lcom/samsung/android/knox/EnterpriseKnoxManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseKnoxManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getGalaxyAIConfiguration()Lcom/samsung/android/knox/appconfig/GalaxyAIConfiguration;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/knox/appconfig/GalaxyAIConfiguration;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/samsung/android/knox/appconfig/GalaxyAIConfiguration;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final getKLM()Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getPrivateKnoxCustom()Lcom/samsung/android/knox/custom/PrivateKnoxCustom;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/custom/PrivateKnoxCustom;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final getSubscriptionManager()Landroid/telephony/SubscriptionManager;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v0, Landroid/telephony/SubscriptionManager;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/telephony/SubscriptionManager;

    .line 10
    .line 11
    return-object p0
.end method

.method public final getTelecomManager()Landroid/telecom/TelecomManager;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v0, Landroid/telecom/TelecomManager;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/telecom/TelecomManager;

    .line 10
    .line 11
    return-object p0
.end method

.method public final getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v0, Landroid/telephony/TelephonyManager;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 10
    .line 11
    return-object p0
.end method

.method public final getUserManager()Landroid/os/UserManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getWindowManagerService()Landroid/view/IWindowManager;
    .locals 0

    .line 1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getlauncherConfiguration()Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final settingsGlobalPutInt(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final settingsSecurePutInt(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final settingsSecurePutString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method
