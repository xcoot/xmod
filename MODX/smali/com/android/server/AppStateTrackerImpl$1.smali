.class public final Lcom/android/server/AppStateTrackerImpl$1;
.super Lcom/android/server/AppStateTrackerImpl$Listener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic val$listener:Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;


# direct methods
.method public constructor <init>(Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/AppStateTrackerImpl$1;->val$listener:Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;

    .line 6
    return-void
.end method


# virtual methods
.method public final updateBackgroundRestrictedForUidPackage(ILjava/lang/String;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$1;->val$listener:Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;

    .line 3
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;->updateBackgroundRestrictedForUidPackage(ILjava/lang/String;Z)V

    .line 6
    return-void
.end method
