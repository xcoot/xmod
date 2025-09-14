.class public final Lcom/android/server/pm/PersistentPreferredActivity;
.super Lcom/android/server/pm/WatchedIntentFilter;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mComponent:Landroid/content/ComponentName;

.field public final mIsSetByDpm:Z

.field public final mSnapshot:Lcom/android/server/utils/SnapshotCache;


# direct methods
.method public constructor <init>(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 9

    .line 14
    invoke-direct {p0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    const/4 v0, 0x0

    .line 15
    const-string/jumbo v1, "name"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/PersistentPreferredActivity;->mComponent:Landroid/content/ComponentName;

    .line 17
    const-string v3, " at "

    const/4 v4, 0x5

    if-nez v2, :cond_0

    .line 18
    const-string v2, "Error in package manager settings: Bad activity name "

    .line 19
    invoke-static {v2, v1, v3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 20
    invoke-static {p1, v1}, Lcom/android/server/pm/CrossProfileIntentFilter$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 21
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 22
    invoke-static {v4, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 23
    :cond_0
    const-string/jumbo v1, "set-by-dpm"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/pm/PersistentPreferredActivity;->mIsSetByDpm:Z

    .line 24
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 25
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 26
    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x1

    const-string v7, "filter"

    if-eq v5, v6, :cond_5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 27
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v1, :cond_5

    .line 28
    :cond_2
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    if-eq v5, v6, :cond_1

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 29
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    .line 30
    :cond_4
    const-string v5, "Unknown element: "

    .line 31
    invoke-static {v5, v2, v3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 32
    invoke-static {p1, v5}, Lcom/android/server/pm/CrossProfileIntentFilter$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    .line 33
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 34
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 35
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 36
    :cond_5
    :goto_1
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 37
    iget-object v1, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, p1}, Landroid/content/IntentFilter;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    .line 38
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing element filter at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-static {p1, v1}, Lcom/android/server/pm/CrossProfileIntentFilter$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 40
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 41
    invoke-static {v4, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 42
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 43
    :goto_2
    new-instance p1, Lcom/android/server/pm/PersistentPreferredActivity$1;

    .line 44
    invoke-direct {p1, p0, p0, v0}, Lcom/android/server/utils/SnapshotCache;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lcom/android/server/pm/PersistentPreferredActivity;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PersistentPreferredActivity;)V
    .locals 1

    .line 8
    invoke-direct {p0, p1}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 9
    iget-object v0, p1, Lcom/android/server/pm/PersistentPreferredActivity;->mComponent:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/server/pm/PersistentPreferredActivity;->mComponent:Landroid/content/ComponentName;

    .line 10
    iget-boolean p1, p1, Lcom/android/server/pm/PersistentPreferredActivity;->mIsSetByDpm:Z

    iput-boolean p1, p0, Lcom/android/server/pm/PersistentPreferredActivity;->mIsSetByDpm:Z

    .line 11
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 12
    invoke-direct {p1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/android/server/pm/PersistentPreferredActivity;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/WatchedIntentFilter;Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    .line 2
    invoke-direct {p0, p1}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Landroid/content/IntentFilter;)V

    .line 3
    iput-object p2, p0, Lcom/android/server/pm/PersistentPreferredActivity;->mComponent:Landroid/content/ComponentName;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/android/server/pm/PersistentPreferredActivity;->mIsSetByDpm:Z

    .line 5
    new-instance p1, Lcom/android/server/pm/PersistentPreferredActivity$1;

    const/4 p2, 0x0

    .line 6
    invoke-direct {p1, p0, p0, p2}, Lcom/android/server/utils/SnapshotCache;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    .line 7
    iput-object p1, p0, Lcom/android/server/pm/PersistentPreferredActivity;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method


# virtual methods
.method public final getIntentFilter$3()Landroid/content/IntentFilter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    .line 2
    .line 3
    return-object p0
.end method

.method public final snapshot()Lcom/android/server/pm/WatchedIntentFilter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PersistentPreferredActivity;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PersistentPreferredActivity;

    return-object p0
.end method

.method public final snapshot()Ljava/lang/Object;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/server/pm/PersistentPreferredActivity;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PersistentPreferredActivity;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "PersistentPreferredActivity{0x"

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
    iget-object v1, p0, Lcom/android/server/pm/PersistentPreferredActivity;->mComponent:Landroid/content/ComponentName;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", mIsSetByDpm="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-boolean p0, p0, Lcom/android/server/pm/PersistentPreferredActivity;->mIsSetByDpm:Z

    .line 39
    .line 40
    const-string/jumbo v1, "}"

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v0, p0}, Landroid/hardware/biometrics/face/V1_0/OptionalBool$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method
