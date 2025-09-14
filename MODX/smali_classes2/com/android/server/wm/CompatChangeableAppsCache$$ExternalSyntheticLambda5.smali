.class public final synthetic Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/32 v0, 0xfbbb1dc

    .line 5
    .line 6
    .line 7
    iput-wide v0, p0, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda5;->f$0:J

    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda5;->f$0:J

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    check-cast p1, Lcom/samsung/android/core/CompatChangeableApps;

    .line 6
    .line 7
    invoke-virtual {p1, v0, v1, p0}, Lcom/samsung/android/core/CompatChangeableApps;->containsOverride(JLjava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method
