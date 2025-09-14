.class public final Lcom/android/server/apphibernation/GlobalLevelHibernationProto;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/apphibernation/ProtoReadWriter;


# virtual methods
.method public final readFromProto(Landroid/util/proto/ProtoInputStream;)Ljava/lang/Object;
    .locals 7

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :goto_0
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, -0x1

    .line 11
    if-eq v0, v1, :cond_5

    .line 13
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x1

    .line 18
    if-eq v0, v2, :cond_0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Lcom/android/server/apphibernation/GlobalLevelState;

    .line 23
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-wide v3, 0x20b00000001L

    .line 31
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 34
    move-result-wide v3

    .line 35
    :goto_1
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 38
    move-result v5

    .line 39
    if-eq v5, v1, :cond_4

    .line 41
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    .line 44
    move-result v5

    .line 45
    if-eq v5, v2, :cond_3

    .line 47
    const/4 v6, 0x2

    .line 48
    if-eq v5, v6, :cond_2

    .line 50
    const/4 v6, 0x3

    .line 51
    if-eq v5, v6, :cond_1

    .line 53
    new-instance v5, Ljava/lang/StringBuilder;

    .line 55
    const-string v6, "Undefined field in proto: "

    .line 57
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    .line 63
    move-result v6

    .line 64
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v5

    .line 71
    const-string v6, "GlobalLevelHibernationProtoReadWriter"

    .line 73
    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    goto :goto_1

    .line 77
    :cond_1
    const-wide v5, 0x10300000003L

    .line 82
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 85
    move-result-wide v5

    .line 86
    iput-wide v5, v0, Lcom/android/server/apphibernation/GlobalLevelState;->savedByte:J

    .line 88
    goto :goto_1

    .line 89
    :cond_2
    const-wide v5, 0x10800000002L

    .line 94
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    .line 97
    move-result v5

    .line 98
    iput-boolean v5, v0, Lcom/android/server/apphibernation/GlobalLevelState;->hibernated:Z

    .line 100
    goto :goto_1

    .line 101
    :cond_3
    const-wide v5, 0x10900000001L

    .line 106
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 109
    move-result-object v5

    .line 110
    iput-object v5, v0, Lcom/android/server/apphibernation/GlobalLevelState;->packageName:Ljava/lang/String;

    .line 112
    goto :goto_1

    .line 113
    :cond_4
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 116
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    goto :goto_0

    .line 120
    :cond_5
    return-object p0
.end method

.method public final writeToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p2, Ljava/util/List;

    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 6
    move-result p0

    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_0
    if-ge v0, p0, :cond_0

    .line 10
    const-wide v1, 0x20b00000001L

    .line 15
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 18
    move-result-wide v1

    .line 19
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lcom/android/server/apphibernation/GlobalLevelState;

    .line 25
    iget-object v4, v3, Lcom/android/server/apphibernation/GlobalLevelState;->packageName:Ljava/lang/String;

    .line 27
    const-wide v5, 0x10900000001L

    .line 32
    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 35
    const-wide v4, 0x10800000002L

    .line 40
    iget-boolean v6, v3, Lcom/android/server/apphibernation/GlobalLevelState;->hibernated:Z

    .line 42
    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 45
    const-wide v4, 0x10300000003L

    .line 50
    iget-wide v6, v3, Lcom/android/server/apphibernation/GlobalLevelState;->savedByte:J

    .line 52
    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 55
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 58
    add-int/lit8 v0, v0, 0x1

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    return-void
.end method
