.class public final Lcom/android/server/pm/PreferredComponent;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAlways:Z

.field public final mCallbacks:Lcom/android/server/pm/PreferredActivity;

.field public final mComponent:Landroid/content/ComponentName;

.field public final mMatch:I

.field public final mParseError:Ljava/lang/String;

.field public final mSetClasses:[Ljava/lang/String;

.field public final mSetComponents:[Ljava/lang/String;

.field public final mSetPackages:[Ljava/lang/String;

.field public final mShortComponent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PreferredActivity;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/server/pm/PreferredComponent;->mCallbacks:Lcom/android/server/pm/PreferredActivity;

    const/high16 p1, 0xfff0000

    and-int/2addr p1, p2

    .line 3
    iput p1, p0, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    .line 4
    iput-object p4, p0, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    .line 5
    iput-boolean p5, p0, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    .line 6
    invoke-virtual {p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    if-eqz p3, :cond_2

    .line 8
    array-length p2, p3

    .line 9
    new-array p4, p2, [Ljava/lang/String;

    .line 10
    new-array p5, p2, [Ljava/lang/String;

    .line 11
    new-array v0, p2, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 12
    aget-object v2, p3, v1

    if-nez v2, :cond_0

    .line 13
    iput-object p1, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    return-void

    .line 16
    :cond_0
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p4, v1

    .line 17
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p5, v1

    .line 18
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 19
    :cond_1
    iput-object p4, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    .line 20
    iput-object p5, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    goto :goto_1

    .line 22
    :cond_2
    iput-object p1, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PreferredActivity;Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 12

    const/4 v0, 0x1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/server/pm/PreferredComponent;->mCallbacks:Lcom/android/server/pm/PreferredActivity;

    const/4 p1, 0x0

    .line 27
    const-string/jumbo v1, "name"

    invoke-interface {p2, p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    .line 28
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    if-nez v3, :cond_0

    .line 29
    const-string v3, "Bad activity name "

    .line 30
    invoke-static {v3, v2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 31
    iput-object v2, p0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    .line 32
    :cond_0
    const-string/jumbo v2, "match"

    const/4 v3, 0x0

    invoke-interface {p2, p1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    .line 33
    const-string/jumbo v2, "set"

    invoke-interface {p2, p1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 34
    const-string v5, "always"

    invoke-interface {p2, p1, v5, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    if-lez v4, :cond_1

    .line 35
    new-array v5, v4, [Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v5, p1

    :goto_0
    if-lez v4, :cond_2

    .line 36
    new-array v6, v4, [Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v6, p1

    :goto_1
    if-lez v4, :cond_3

    .line 37
    new-array v7, v4, [Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v7, p1

    .line 38
    :goto_2
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v8

    .line 39
    :cond_4
    :goto_3
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v9

    if-eq v9, v0, :cond_d

    const/4 v10, 0x3

    if-ne v9, v10, :cond_5

    .line 40
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v11

    if-le v11, v8, :cond_d

    :cond_5
    if-eq v9, v10, :cond_4

    const/4 v10, 0x4

    if-ne v9, v10, :cond_6

    goto :goto_3

    .line 41
    :cond_6
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 42
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 43
    invoke-interface {p2, p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_7

    .line 44
    iget-object v9, p0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    if-nez v9, :cond_a

    .line 45
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "No name in set tag in preferred activity "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    goto :goto_4

    :cond_7
    if-lt v3, v4, :cond_8

    .line 46
    iget-object v9, p0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    if-nez v9, :cond_a

    .line 47
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Too many set tags in preferred activity "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    goto :goto_4

    .line 48
    :cond_8
    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    if-nez v10, :cond_9

    .line 49
    iget-object v10, p0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    if-nez v10, :cond_a

    .line 50
    const-string v10, "Bad set name "

    const-string v11, " in preferred activity "

    .line 51
    invoke-static {v10, v9, v11}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 52
    iget-object v10, p0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    goto :goto_4

    .line 53
    :cond_9
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v3

    .line 54
    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v3

    .line 55
    aput-object v9, v7, v3

    add-int/2addr v3, v0

    .line 56
    :cond_a
    :goto_4
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_3

    .line 57
    :cond_b
    iget-object v10, p0, Lcom/android/server/pm/PreferredComponent;->mCallbacks:Lcom/android/server/pm/PreferredActivity;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    const-string v11, "filter"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 59
    iget-object v9, v10, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v9, p2}, Landroid/content/IntentFilter;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_3

    .line 60
    :cond_c
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Unknown element under <preferred-activities>: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-static {p2, v9}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v9

    .line 62
    sget-boolean v10, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const/4 v10, 0x5

    .line 63
    invoke-static {v10, v9}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 64
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_3

    :cond_d
    if-eq v3, v4, :cond_e

    .line 65
    iget-object p1, p0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    if-nez p1, :cond_e

    .line 66
    const-string p1, "Not enough set tags (expected "

    const-string p2, " but found "

    const-string v0, ") in "

    .line 67
    invoke-static {v4, v3, p1, p2, v0}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 68
    iget-object p2, p0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    .line 69
    :cond_e
    iput-object v5, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    .line 70
    iput-object v6, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    .line 71
    iput-object v7, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    return-void
.end method
