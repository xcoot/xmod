.class public final Lcom/android/server/pm/CrossProfileIntentFilter;
.super Lcom/android/server/pm/WatchedIntentFilter;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAccessControlLevel:I

.field public final mFlags:I

.field public final mOwnerPackage:Ljava/lang/String;

.field public final mSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public final mTargetUserId:I


# direct methods
.method public constructor <init>(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 7

    .line 18
    invoke-direct {p0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    const/4 v0, 0x0

    .line 19
    const-string/jumbo v1, "targetUserId"

    const/16 v2, -0x2710

    invoke-interface {p1, v0, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    .line 20
    const-string/jumbo v1, "ownerPackage"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Missing element under CrossProfileIntentFilter: ownerPackage at "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-static {p1, v1}, Lcom/android/server/pm/CrossProfileIntentFilter$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 23
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 24
    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 25
    const-string v1, ""

    .line 26
    :cond_0
    iput-object v1, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mOwnerPackage:Ljava/lang/String;

    .line 27
    const-string v1, "accessControl"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mAccessControlLevel:I

    .line 28
    const-string v1, "flags"

    invoke-interface {p1, v0, v1, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    .line 29
    new-instance v1, Lcom/android/server/pm/CrossProfileIntentFilter$1;

    .line 30
    invoke-direct {v1, p0, p0, v0}, Lcom/android/server/utils/SnapshotCache;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    .line 31
    iput-object v1, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 32
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 33
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 34
    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    const-string v5, "filter"

    if-eq v3, v4, :cond_5

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 35
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v0, :cond_5

    .line 36
    :cond_2
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 37
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 38
    :cond_4
    const-string v3, "Unknown element under crossProfile-intent-filters: "

    const-string v4, " at "

    .line 39
    invoke-static {v3, v1, v4}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 40
    invoke-static {p1, v3}, Lcom/android/server/pm/CrossProfileIntentFilter$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 41
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 42
    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 43
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 44
    :cond_5
    :goto_1
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 45
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    .line 46
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Missing element under CrossProfileIntentFilter: filter at "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-static {p1, p0}, Lcom/android/server/pm/CrossProfileIntentFilter$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    .line 48
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 49
    invoke-static {v2, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 50
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_2
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/CrossProfileIntentFilter;)V
    .locals 1

    .line 10
    invoke-direct {p0, p1}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 11
    iget v0, p1, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    iput v0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    .line 12
    iget-object v0, p1, Lcom/android/server/pm/CrossProfileIntentFilter;->mOwnerPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mOwnerPackage:Ljava/lang/String;

    .line 13
    iget v0, p1, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    iput v0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    .line 14
    iget p1, p1, Lcom/android/server/pm/CrossProfileIntentFilter;->mAccessControlLevel:I

    iput p1, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mAccessControlLevel:I

    .line 15
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 16
    invoke-direct {p1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/WatchedIntentFilter;Ljava/lang/String;III)V
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    .line 2
    invoke-direct {p0, p1}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Landroid/content/IntentFilter;)V

    .line 3
    iput p3, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    .line 4
    iput-object p2, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mOwnerPackage:Ljava/lang/String;

    .line 5
    iput p4, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    .line 6
    iput p5, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mAccessControlLevel:I

    .line 7
    new-instance p1, Lcom/android/server/pm/CrossProfileIntentFilter$1;

    const/4 p2, 0x0

    .line 8
    invoke-direct {p1, p0, p0, p2}, Lcom/android/server/utils/SnapshotCache;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    .line 9
    iput-object p1, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method


# virtual methods
.method public final snapshot()Lcom/android/server/pm/WatchedIntentFilter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/CrossProfileIntentFilter;

    return-object p0
.end method

.method public final snapshot()Ljava/lang/Object;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/CrossProfileIntentFilter;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "CrossProfileIntentFilter{0x"

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
    iget p0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    .line 25
    .line 26
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string/jumbo p0, "}"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method
