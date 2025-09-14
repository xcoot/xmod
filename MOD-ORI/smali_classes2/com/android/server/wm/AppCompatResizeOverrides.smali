.class public final Lcom/android/server/wm/AppCompatResizeOverrides;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mAllowForceResizeOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/utils/OptPropFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/AppCompatResizeOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 5
    .line 6
    const-string p1, "android.window.PROPERTY_COMPAT_ALLOW_RESIZEABLE_ACTIVITY_OVERRIDES"

    .line 7
    .line 8
    invoke-virtual {p2, p1}, Lcom/android/server/wm/utils/OptPropFactory;->create(Ljava/lang/String;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/android/server/wm/AppCompatResizeOverrides;->mAllowForceResizeOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 13
    .line 14
    return-void
.end method
