.class public final synthetic Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

.field public final synthetic f$1:Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 4
    .line 5
    sget v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->$r8$clinit:I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroid/os/UserHandle;

    .line 11
    .line 12
    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 13
    .line 14
    .line 15
    const-string/jumbo p1, "shouldReceiveEvent"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isEnabledProfileOf(Landroid/os/UserHandle;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0
.end method
