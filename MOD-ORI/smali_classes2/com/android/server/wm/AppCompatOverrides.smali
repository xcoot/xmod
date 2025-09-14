.class public final Lcom/android/server/wm/AppCompatOverrides;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAppCompatAspectRatioOverrides:Lcom/android/server/wm/AppCompatAspectRatioOverrides;

.field public final mAppCompatCameraOverrides:Lcom/android/server/wm/AppCompatCameraOverrides;

.field public final mAppCompatFocusOverrides:Lcom/android/server/wm/AppCompatFocusOverrides;

.field public final mAppCompatLetterboxOverrides:Lcom/android/server/wm/AppCompatLetterboxOverrides;

.field public final mAppCompatOrientationOverrides:Lcom/android/server/wm/AppCompatOrientationOverrides;

.field public final mAppCompatReachabilityOverrides:Lcom/android/server/wm/AppCompatReachabilityOverrides;

.field public final mAppCompatResizeOverrides:Lcom/android/server/wm/AppCompatResizeOverrides;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/utils/OptPropFactory;Lcom/android/server/wm/AppCompatDeviceStateQuery;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/wm/AppCompatCameraOverrides;

    .line 5
    .line 6
    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/wm/AppCompatCameraOverrides;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/utils/OptPropFactory;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/AppCompatOverrides;->mAppCompatCameraOverrides:Lcom/android/server/wm/AppCompatCameraOverrides;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/wm/AppCompatOrientationOverrides;

    .line 12
    .line 13
    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/wm/AppCompatOrientationOverrides;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/utils/OptPropFactory;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/AppCompatOverrides;->mAppCompatOrientationOverrides:Lcom/android/server/wm/AppCompatOrientationOverrides;

    .line 17
    .line 18
    new-instance v6, Lcom/android/server/wm/AppCompatReachabilityOverrides;

    .line 19
    .line 20
    invoke-direct {v6, p1, p2, p4}, Lcom/android/server/wm/AppCompatReachabilityOverrides;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/AppCompatDeviceStateQuery;)V

    .line 21
    .line 22
    .line 23
    iput-object v6, p0, Lcom/android/server/wm/AppCompatOverrides;->mAppCompatReachabilityOverrides:Lcom/android/server/wm/AppCompatReachabilityOverrides;

    .line 24
    .line 25
    new-instance v0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    .line 26
    .line 27
    move-object v1, v0

    .line 28
    move-object v2, p1

    .line 29
    move-object v3, p2

    .line 30
    move-object v4, p3

    .line 31
    move-object v5, p4

    .line 32
    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/utils/OptPropFactory;Lcom/android/server/wm/AppCompatDeviceStateQuery;Lcom/android/server/wm/AppCompatReachabilityOverrides;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/server/wm/AppCompatOverrides;->mAppCompatAspectRatioOverrides:Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    .line 36
    .line 37
    new-instance p4, Lcom/android/server/wm/AppCompatFocusOverrides;

    .line 38
    .line 39
    invoke-direct {p4, p1, p2, p3}, Lcom/android/server/wm/AppCompatFocusOverrides;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/utils/OptPropFactory;)V

    .line 40
    .line 41
    .line 42
    iput-object p4, p0, Lcom/android/server/wm/AppCompatOverrides;->mAppCompatFocusOverrides:Lcom/android/server/wm/AppCompatFocusOverrides;

    .line 43
    .line 44
    new-instance p4, Lcom/android/server/wm/AppCompatResizeOverrides;

    .line 45
    .line 46
    invoke-direct {p4, p1, p3}, Lcom/android/server/wm/AppCompatResizeOverrides;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/utils/OptPropFactory;)V

    .line 47
    .line 48
    .line 49
    iput-object p4, p0, Lcom/android/server/wm/AppCompatOverrides;->mAppCompatResizeOverrides:Lcom/android/server/wm/AppCompatResizeOverrides;

    .line 50
    .line 51
    new-instance p3, Lcom/android/server/wm/AppCompatLetterboxOverrides;

    .line 52
    .line 53
    invoke-direct {p3, p1, p2}, Lcom/android/server/wm/AppCompatLetterboxOverrides;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;)V

    .line 54
    .line 55
    .line 56
    iput-object p3, p0, Lcom/android/server/wm/AppCompatOverrides;->mAppCompatLetterboxOverrides:Lcom/android/server/wm/AppCompatLetterboxOverrides;

    .line 57
    .line 58
    return-void
.end method
