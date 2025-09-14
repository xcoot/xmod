.class public final Lcom/android/server/pm/PreferredActivity;
.super Lcom/android/server/pm/WatchedIntentFilter;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPref:Lcom/android/server/pm/PreferredComponent;

.field public final mSnapshot:Lcom/android/server/utils/SnapshotCache;


# direct methods
.method public constructor <init>(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 13
    new-instance v0, Lcom/android/server/pm/PreferredComponent;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/PreferredComponent;-><init>(Lcom/android/server/pm/PreferredActivity;Lcom/android/modules/utils/TypedXmlPullParser;)V

    iput-object v0, p0, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 14
    new-instance p1, Lcom/android/server/pm/PreferredActivity$1;

    const/4 v0, 0x0

    .line 15
    invoke-direct {p1, p0, p0, v0}, Lcom/android/server/utils/SnapshotCache;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lcom/android/server/pm/PreferredActivity;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PreferredActivity;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 8
    iget-object p1, p1, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iput-object p1, p0, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 9
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 10
    invoke-direct {p1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/server/pm/PreferredActivity;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V
    .locals 6

    .line 1
    iget-object p1, p1, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    .line 2
    invoke-direct {p0, p1}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Landroid/content/IntentFilter;)V

    .line 3
    new-instance p1, Lcom/android/server/pm/PreferredComponent;

    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PreferredComponent;-><init>(Lcom/android/server/pm/PreferredActivity;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    iput-object p1, p0, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 4
    new-instance p1, Lcom/android/server/pm/PreferredActivity$1;

    const/4 p2, 0x0

    .line 5
    invoke-direct {p1, p0, p0, p2}, Lcom/android/server/utils/SnapshotCache;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Lcom/android/server/pm/PreferredActivity;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method


# virtual methods
.method public final snapshot()Lcom/android/server/pm/WatchedIntentFilter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PreferredActivity;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PreferredActivity;

    return-object p0
.end method

.method public final snapshot()Ljava/lang/Object;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/server/pm/PreferredActivity;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PreferredActivity;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "PreferredActivity{0x"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, " "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string/jumbo p0, "}"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method
