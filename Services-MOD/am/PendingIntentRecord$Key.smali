.class public final Lcom/android/server/am/PendingIntentRecord$Key;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final activity:Landroid/os/IBinder;

.field public allIntents:[Landroid/content/Intent;

.field public allResolvedTypes:[Ljava/lang/String;

.field public final featureId:Ljava/lang/String;

.field public final flags:I

.field public final hashCode:I

.field public final options:Lcom/android/server/wm/SafeActivityOptions;

.field public final packageName:Ljava/lang/String;

.field public final requestCode:I

.field public final requestIntent:Landroid/content/Intent;

.field public final requestResolvedType:Ljava/lang/String;

.field public final type:I

.field public final userId:I

.field public final who:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILcom/android/server/wm/SafeActivityOptions;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    .line 6
    iput-object p2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    .line 12
    iput-object p5, p0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    .line 14
    iput p6, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    .line 16
    const/4 p3, 0x0

    .line 17
    if-eqz p7, :cond_0

    .line 19
    array-length v0, p7

    .line 20
    add-int/lit8 v0, v0, -0x1

    .line 22
    aget-object v0, p7, v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v0, p3

    .line 26
    :goto_0
    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    .line 28
    if-eqz p8, :cond_1

    .line 30
    array-length p3, p8

    .line 31
    add-int/lit8 p3, p3, -0x1

    .line 33
    aget-object p3, p8, p3

    .line 35
    :cond_1
    iput-object p3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    .line 37
    iput-object p7, p0, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    .line 39
    iput-object p8, p0, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    .line 41
    iput p9, p0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    .line 43
    iput-object p10, p0, Lcom/android/server/am/PendingIntentRecord$Key;->options:Lcom/android/server/wm/SafeActivityOptions;

    .line 45
    iput p11, p0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    .line 47
    const/16 p7, 0x353

    .line 49
    add-int/2addr p7, p9

    .line 50
    mul-int/lit8 p7, p7, 0x25

    .line 52
    add-int/2addr p7, p6

    .line 53
    mul-int/lit8 p7, p7, 0x25

    .line 55
    add-int/2addr p7, p11

    .line 56
    if-eqz p5, :cond_2

    .line 58
    mul-int/lit8 p7, p7, 0x25

    .line 60
    invoke-virtual {p5}, Ljava/lang/String;->hashCode()I

    .line 63
    move-result p5

    .line 64
    add-int/2addr p7, p5

    .line 65
    :cond_2
    if-eqz p4, :cond_3

    .line 67
    mul-int/lit8 p7, p7, 0x25

    .line 69
    invoke-interface {p4}, Landroid/os/IBinder;->hashCode()I

    .line 72
    move-result p4

    .line 73
    add-int/2addr p7, p4

    .line 74
    :cond_3
    if-eqz v0, :cond_4

    .line 76
    mul-int/lit8 p7, p7, 0x25

    .line 78
    invoke-virtual {v0}, Landroid/content/Intent;->filterHashCode()I

    .line 81
    move-result p4

    .line 82
    add-int/2addr p7, p4

    .line 83
    :cond_4
    if-eqz p3, :cond_5

    .line 85
    mul-int/lit8 p7, p7, 0x25

    .line 87
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    .line 90
    move-result p3

    .line 91
    add-int/2addr p7, p3

    .line 92
    :cond_5
    mul-int/lit8 p7, p7, 0x25

    .line 94
    if-eqz p2, :cond_6

    .line 96
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 99
    move-result p2

    .line 100
    goto :goto_1

    .line 101
    :cond_6
    const/4 p2, 0x0

    .line 102
    :goto_1
    add-int/2addr p7, p2

    .line 103
    mul-int/lit8 p7, p7, 0x25

    .line 105
    add-int/2addr p7, p1

    .line 106
    iput p7, p0, Lcom/android/server/am/PendingIntentRecord$Key;->hashCode:I

    .line 108
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    :try_start_0
    check-cast p1, Lcom/android/server/am/PendingIntentRecord$Key;

    .line 7
    iget v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    .line 9
    iget v2, p1, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    .line 11
    if-eq v1, v2, :cond_1

    .line 13
    return v0

    .line 14
    :cond_1
    iget v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    .line 16
    iget v2, p1, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    .line 18
    if-eq v1, v2, :cond_2

    .line 20
    return v0

    .line 21
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    .line 23
    iget-object v2, p1, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    .line 25
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_3

    .line 31
    return v0

    .line 32
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    .line 34
    iget-object v2, p1, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    .line 36
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_4

    .line 42
    return v0

    .line 43
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    .line 45
    iget-object v2, p1, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    .line 47
    if-eq v1, v2, :cond_5

    .line 49
    return v0

    .line 50
    :cond_5
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    .line 52
    iget-object v2, p1, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    .line 54
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_6

    .line 60
    return v0

    .line 61
    :cond_6
    iget v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    .line 63
    iget v2, p1, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    .line 65
    if-eq v1, v2, :cond_7

    .line 67
    return v0

    .line 68
    :cond_7
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    .line 70
    iget-object v2, p1, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    .line 72
    if-eq v1, v2, :cond_9

    .line 74
    if-eqz v1, :cond_8

    .line 76
    invoke-virtual {v1, v2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    .line 79
    move-result v1

    .line 80
    if-nez v1, :cond_9

    .line 82
    return v0

    .line 83
    :cond_8
    if-eqz v2, :cond_9

    .line 85
    return v0

    .line 86
    :cond_9
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    .line 88
    iget-object v2, p1, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    .line 90
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    move-result v1

    .line 94
    if-nez v1, :cond_a

    .line 96
    return v0

    .line 97
    :cond_a
    iget p0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    .line 99
    iget p1, p1, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    if-eq p0, p1, :cond_b

    .line 103
    return v0

    .line 104
    :cond_b
    const/4 p0, 0x1

    .line 105
    return p0

    .line 106
    :catch_0
    return v0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->hashCode:I

    .line 3
    return p0
.end method

.method public final toSecureString(Z)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "Key{"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, " pkg="

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    .line 27
    if-eqz v1, :cond_0

    .line 29
    const-string v2, "/"

    .line 31
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-string v1, ""

    .line 38
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, " intent="

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    .line 48
    if-eqz v1, :cond_1

    .line 50
    const/4 v2, 0x1

    .line 51
    const/4 v3, 0x0

    .line 52
    invoke-virtual {v1, p1, v2, v3, v3}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    const-string p1, "<null>"

    .line 59
    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string p1, " flags=0x"

    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget p1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    .line 69
    const-string v1, " u="

    .line 71
    invoke-static {p1, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 74
    iget p1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    const-string/jumbo p1, "} requestCode="

    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget p0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    .line 87
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object p0

    .line 94
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/am/PendingIntentRecord$Key;->toSecureString(Z)Ljava/lang/String;

    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public final typeName()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iget p0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    .line 4
    if-eq p0, v0, :cond_4

    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_3

    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_2

    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p0, v0, :cond_1

    .line 15
    const/4 v0, 0x5

    .line 16
    if-eq p0, v0, :cond_0

    .line 18
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_0
    const-string/jumbo p0, "startForegroundService"

    .line 26
    return-object p0

    .line 27
    :cond_1
    const-string/jumbo p0, "startService"

    .line 30
    return-object p0

    .line 31
    :cond_2
    const-string p0, "activityResult"

    .line 33
    return-object p0

    .line 34
    :cond_3
    const-string/jumbo p0, "startActivity"

    .line 37
    return-object p0

    .line 38
    :cond_4
    const-string/jumbo p0, "broadcastIntent"

    .line 41
    return-object p0
.end method
