.class public final Lcom/android/server/notification/sec/NotificationRealNamePolicy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCheckKeyMap:Ljava/util/Map;

.field public mCheckPackageMap:Ljava/util/Map;


# virtual methods
.method public final setList(Ljava/util/List;Ljava/util/List;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/sec/NotificationRealNamePolicy;->mCheckPackageMap:Ljava/util/Map;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    move v3, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v3, v2

    .line 10
    :goto_0
    iget-object v4, p0, Lcom/android/server/notification/sec/NotificationRealNamePolicy;->mCheckKeyMap:Ljava/util/Map;

    .line 11
    .line 12
    if-nez v4, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move v1, v2

    .line 16
    :goto_1
    or-int/2addr v1, v3

    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    return-void

    .line 20
    :cond_2
    check-cast v0, Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/notification/sec/NotificationRealNamePolicy;->mCheckKeyMap:Ljava/util/Map;

    .line 26
    .line 27
    check-cast v0, Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 30
    .line 31
    .line 32
    check-cast p1, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Ljava/lang/String;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/android/server/notification/sec/NotificationRealNamePolicy;->mCheckPackageMap:Ljava/util/Map;

    .line 51
    .line 52
    const-string v3, "added"

    .line 53
    .line 54
    check-cast v1, Ljava/util/HashMap;

    .line 55
    .line 56
    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    check-cast p2, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    :cond_4
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    if-eqz p2, :cond_5

    .line 71
    .line 72
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    check-cast p2, Ljava/lang/String;

    .line 77
    .line 78
    const-string v0, ","

    .line 79
    .line 80
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    array-length v1, v0

    .line 85
    if-lez v1, :cond_4

    .line 86
    .line 87
    iget-object v1, p0, Lcom/android/server/notification/sec/NotificationRealNamePolicy;->mCheckKeyMap:Ljava/util/Map;

    .line 88
    .line 89
    aget-object v0, v0, v2

    .line 90
    .line 91
    check-cast v1, Ljava/util/HashMap;

    .line 92
    .line 93
    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string/jumbo p2, "setList checkPackage count="

    .line 100
    .line 101
    .line 102
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object p2, p0, Lcom/android/server/notification/sec/NotificationRealNamePolicy;->mCheckPackageMap:Ljava/util/Map;

    .line 106
    .line 107
    check-cast p2, Ljava/util/HashMap;

    .line 108
    .line 109
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string p2, " CheckKey count="

    .line 117
    .line 118
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget-object p0, p0, Lcom/android/server/notification/sec/NotificationRealNamePolicy;->mCheckKeyMap:Ljava/util/Map;

    .line 122
    .line 123
    check-cast p0, Ljava/util/HashMap;

    .line 124
    .line 125
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    const-string p1, "NotificationRealNamePolicy"

    .line 137
    .line 138
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    return-void
.end method
