.class public final Lcom/android/server/apphibernation/UserLevelHibernationProto;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/apphibernation/ProtoReadWriter;


# virtual methods
.method public final readFromProto(Landroid/util/proto/ProtoInputStream;)Ljava/lang/Object;
    .locals 7

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    :goto_0
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, -0x1

    .line 11
    if-eq v0, v1, :cond_4

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x1

    .line 18
    if-eq v0, v2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Lcom/android/server/apphibernation/UserLevelState;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    const-wide v3, 0x20b00000001L

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    :goto_1
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eq v5, v1, :cond_3

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-eq v5, v2, :cond_2

    .line 46
    .line 47
    const/4 v6, 0x2

    .line 48
    if-eq v5, v6, :cond_1

    .line 49
    .line 50
    new-instance v5, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v6, "Undefined field in proto: "

    .line 53
    .line 54
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    const-string v6, "UserLevelHibernationProtoReadWriter"

    .line 69
    .line 70
    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    const-wide v5, 0x10800000002L

    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    iput-boolean v5, v0, Lcom/android/server/apphibernation/UserLevelState;->hibernated:Z

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    const-wide v5, 0x10900000001L

    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    iput-object v5, v0, Lcom/android/server/apphibernation/UserLevelState;->packageName:Ljava/lang/String;

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_4
    return-object p0
.end method

.method public final writeToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p2, Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_0
    if-ge v0, p0, :cond_0

    .line 9
    .line 10
    const-wide v1, 0x20b00000001L

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lcom/android/server/apphibernation/UserLevelState;

    .line 24
    .line 25
    iget-object v4, v3, Lcom/android/server/apphibernation/UserLevelState;->packageName:Ljava/lang/String;

    .line 26
    .line 27
    const-wide v5, 0x10900000001L

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-wide v4, 0x10800000002L

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    iget-boolean v3, v3, Lcom/android/server/apphibernation/UserLevelState;->hibernated:Z

    .line 41
    .line 42
    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 46
    .line 47
    .line 48
    add-int/lit8 v0, v0, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method
