.class public final Lcom/android/server/display/notifications/DisplayNotificationManager$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/display/notifications/DisplayNotificationManager$Injector;


# instance fields
.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$flags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public final synthetic val$statsService:Lcom/android/server/display/ExternalDisplayStatsService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/ExternalDisplayStatsService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/notifications/DisplayNotificationManager$1;->val$context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/display/notifications/DisplayNotificationManager$1;->val$flags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/display/notifications/DisplayNotificationManager$1;->val$statsService:Lcom/android/server/display/ExternalDisplayStatsService;

    .line 9
    .line 10
    return-void
.end method
