.class public final Lcom/android/server/location/LocationManagerService$3;
.super Lcom/samsung/android/location/ISLocationSystemCallV1$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/LocationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/location/LocationManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$3;->this$0:Lcom/android/server/location/LocationManagerService;

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/location/ISLocationSystemCallV1$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final isProviderEnabledForUser(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$3;->this$0:Lcom/android/server/location/LocationManagerService;

    .line 3
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mLocalService:Lcom/android/server/location/LocationManagerService$LocalService;

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/LocationManagerService$LocalService;->isProviderEnabledForUser(Ljava/lang/String;I)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final isUidForeground(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$3;->this$0:Lcom/android/server/location/LocationManagerService;

    .line 3
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 5
    check-cast p0, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 7
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAppForegroundHelper:Lcom/android/server/location/injector/SystemAppForegroundHelper;

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/SystemAppForegroundHelper;->isAppForeground(I)Z

    .line 12
    move-result p0

    .line 13
    return p0
.end method
