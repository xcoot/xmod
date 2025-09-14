.class public final Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final componentName:Landroid/content/ComponentName;

.field public final uid:I


# direct methods
.method public constructor <init>(ILandroid/content/ComponentName;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    .line 6
    iput-object p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 8
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 8
    return v1

    .line 9
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    move-result-object v2

    .line 13
    const-class v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 15
    if-eq v3, v2, :cond_2

    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 20
    iget v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    .line 22
    iget v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    .line 24
    if-eq v2, v3, :cond_3

    .line 26
    return v1

    .line 27
    :cond_3
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 29
    if-nez p0, :cond_4

    .line 31
    iget-object p0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 33
    if-eqz p0, :cond_5

    .line 35
    return v1

    .line 36
    :cond_4
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 38
    invoke-virtual {p0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result p0

    .line 42
    if-nez p0, :cond_5

    .line 44
    return v1

    .line 45
    :cond_5
    return v0
.end method

.method public final getFalseReasonForEquals(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 3
    const-string p0, "Eqauls Object"

    .line 5
    return-object p0

    .line 6
    :cond_0
    if-nez p1, :cond_1

    .line 8
    const-string/jumbo p0, "other Null"

    .line 11
    return-object p0

    .line 12
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    move-result-object v0

    .line 16
    const-class v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 18
    if-eq v1, v0, :cond_2

    .line 20
    const-string p0, "Different Class"

    .line 22
    return-object p0

    .line 23
    :cond_2
    check-cast p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 25
    iget v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    .line 27
    iget v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    .line 29
    if-eq v0, v1, :cond_3

    .line 31
    const-string p0, "Different UID"

    .line 33
    return-object p0

    .line 34
    :cond_3
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 36
    if-nez p0, :cond_4

    .line 38
    iget-object p0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 40
    if-eqz p0, :cond_5

    .line 42
    const-string/jumbo p0, "this componentName Null"

    .line 45
    return-object p0

    .line 46
    :cond_4
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 48
    invoke-virtual {p0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result p0

    .line 52
    if-nez p0, :cond_5

    .line 54
    const-string p0, "Different Component Name"

    .line 56
    return-object p0

    .line 57
    :cond_5
    const-string p0, "Eqauls Data"

    .line 59
    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 7
    if-eqz p0, :cond_0

    .line 9
    invoke-virtual {p0}, Landroid/content/ComponentName;->hashCode()I

    .line 12
    move-result p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    add-int/2addr v0, p0

    .line 16
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "ProviderId{user:"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    .line 10
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 13
    move-result v2

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    const-string v2, ", app:"

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    const-string v1, ", cmp:"

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    const/16 p0, 0x7d

    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method
