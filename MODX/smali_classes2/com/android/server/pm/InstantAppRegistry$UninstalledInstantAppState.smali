.class public final Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

.field public final mTimestamp:J


# direct methods
.method public constructor <init>(Landroid/content/pm/InstantAppInfo;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mTimestamp:J

    .line 7
    .line 8
    return-void
.end method
