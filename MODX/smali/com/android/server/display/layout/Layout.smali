.class public final Lcom/android/server/display/layout/Layout;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDisplays:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    iput-object v0, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    .line 12
    return-void
.end method


# virtual methods
.method public final createDisplayLocked(Landroid/view/DisplayAddress;ZZLjava/lang/String;Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda2;ILandroid/view/DisplayAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-object v2, p1

    .line 3
    move v1, p2

    .line 4
    move-object/from16 v8, p7

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/display/layout/Layout;->getByAddress(Landroid/view/DisplayAddress;)Lcom/android/server/display/layout/Layout$Display;

    .line 9
    move-result-object v3

    .line 10
    const-string v4, "Layout"

    .line 12
    if-eqz v3, :cond_0

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    const-string v1, "Attempting to add second definition for display-device: "

    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void

    .line 32
    :cond_0
    if-eqz v1, :cond_1

    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-virtual {p0, v3}, Lcom/android/server/display/layout/Layout;->getById(I)Lcom/android/server/display/layout/Layout$Display;

    .line 38
    move-result-object v3

    .line 39
    if-eqz v3, :cond_1

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    const-string v1, "Ignoring attempt to add a second default display: "

    .line 45
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void

    .line 59
    :cond_1
    const-string v3, ""

    .line 61
    if-nez p4, :cond_2

    .line 63
    move-object v5, v3

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    move-object/from16 v5, p4

    .line 67
    :goto_0
    if-eqz v1, :cond_4

    .line 69
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    move-result v3

    .line 73
    if-eqz v3, :cond_3

    .line 75
    goto :goto_1

    .line 76
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 78
    const-string v1, "Default display should own DEFAULT_DISPLAY_GROUP"

    .line 80
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 83
    throw v0

    .line 84
    :cond_4
    :goto_1
    if-eqz v1, :cond_6

    .line 86
    if-nez v8, :cond_5

    .line 88
    goto :goto_2

    .line 89
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 91
    const-string v1, "Default display cannot have a lead display"

    .line 93
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 96
    throw v0

    .line 97
    :cond_6
    :goto_2
    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 100
    move-result v3

    .line 101
    if-nez v3, :cond_8

    .line 103
    if-nez v1, :cond_7

    .line 105
    const/4 v1, 0x1

    .line 106
    :goto_3
    move v3, v1

    .line 107
    goto :goto_4

    .line 108
    :cond_7
    move-object/from16 v3, p5

    .line 110
    invoke-virtual {v3, p2}, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda2;->getId(Z)I

    .line 113
    move-result v1

    .line 114
    goto :goto_3

    .line 115
    :goto_4
    new-instance v12, Lcom/android/server/display/layout/Layout$Display;

    .line 117
    move-object v1, v12

    .line 118
    move-object v2, p1

    .line 119
    move/from16 v4, p3

    .line 121
    move-object/from16 v6, p8

    .line 123
    move/from16 v7, p6

    .line 125
    move-object/from16 v8, p7

    .line 127
    move-object/from16 v9, p9

    .line 129
    move-object/from16 v10, p10

    .line 131
    move-object/from16 v11, p11

    .line 133
    invoke-direct/range {v1 .. v11}, Lcom/android/server/display/layout/Layout$Display;-><init>(Landroid/view/DisplayAddress;IZLjava/lang/String;Ljava/lang/String;ILandroid/view/DisplayAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, v0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    .line 138
    check-cast v0, Ljava/util/ArrayList;

    .line 140
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    return-void

    .line 144
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 146
    const-string v1, "Lead display address cannot be the same as display  address"

    .line 148
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 151
    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/android/server/display/layout/Layout;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    check-cast p1, Lcom/android/server/display/layout/Layout;

    .line 9
    iget-object p0, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    .line 11
    iget-object p1, p1, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    .line 13
    check-cast p0, Ljava/util/ArrayList;

    .line 15
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final getByAddress(Landroid/view/DisplayAddress;)Lcom/android/server/display/layout/Layout$Display;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    .line 4
    check-cast v1, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v1

    .line 10
    if-ge v0, v1, :cond_2

    .line 12
    iget-object v1, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    .line 14
    check-cast v1, Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/server/display/layout/Layout$Display;

    .line 22
    iget-object v2, v1, Lcom/android/server/display/layout/Layout$Display;->mAddress:Landroid/view/DisplayAddress;

    .line 24
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 30
    return-object v1

    .line 31
    :cond_0
    iget-object v2, v1, Lcom/android/server/display/layout/Layout$Display;->mAddress:Landroid/view/DisplayAddress;

    .line 33
    invoke-static {p1, v2}, Landroid/view/DisplayAddress$Physical;->isPortMatch(Landroid/view/DisplayAddress;Landroid/view/DisplayAddress;)Z

    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 39
    return-object v1

    .line 40
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const/4 p0, 0x0

    .line 44
    return-object p0
.end method

.method public final getById(I)Lcom/android/server/display/layout/Layout$Display;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    .line 4
    check-cast v1, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v1

    .line 10
    if-ge v0, v1, :cond_1

    .line 12
    iget-object v1, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    .line 14
    check-cast v1, Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/server/display/layout/Layout$Display;

    .line 22
    iget v2, v1, Lcom/android/server/display/layout/Layout$Display;->mLogicalDisplayId:I

    .line 24
    if-ne p1, v2, :cond_0

    .line 26
    return-object v1

    .line 27
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->hashCode()I

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final postProcessLocked()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    .line 4
    check-cast v1, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v1

    .line 10
    if-ge v0, v1, :cond_7

    .line 12
    iget-object v1, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    .line 14
    check-cast v1, Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/server/display/layout/Layout$Display;

    .line 22
    iget v2, v1, Lcom/android/server/display/layout/Layout$Display;->mLogicalDisplayId:I

    .line 24
    const/4 v3, -0x1

    .line 25
    if-nez v2, :cond_0

    .line 27
    iput v3, v1, Lcom/android/server/display/layout/Layout$Display;->mLeadDisplayId:I

    .line 29
    goto :goto_2

    .line 30
    :cond_0
    iget-object v2, v1, Lcom/android/server/display/layout/Layout$Display;->mLeadDisplayAddress:Landroid/view/DisplayAddress;

    .line 32
    if-nez v2, :cond_1

    .line 34
    iput v3, v1, Lcom/android/server/display/layout/Layout$Display;->mLeadDisplayId:I

    .line 36
    goto :goto_2

    .line 37
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/display/layout/Layout;->getByAddress(Landroid/view/DisplayAddress;)Lcom/android/server/display/layout/Layout$Display;

    .line 40
    move-result-object v3

    .line 41
    if-eqz v3, :cond_6

    .line 43
    iget-object v2, v1, Lcom/android/server/display/layout/Layout$Display;->mDisplayGroupName:Ljava/lang/String;

    .line 45
    iget-object v4, v3, Lcom/android/server/display/layout/Layout$Display;->mDisplayGroupName:Ljava/lang/String;

    .line 47
    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_5

    .line 53
    new-instance v2, Landroid/util/ArraySet;

    .line 55
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 58
    move-object v4, v1

    .line 59
    :goto_1
    if-eqz v4, :cond_4

    .line 61
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 64
    move-result v5

    .line 65
    if-nez v5, :cond_3

    .line 67
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v4, v4, Lcom/android/server/display/layout/Layout$Display;->mLeadDisplayAddress:Landroid/view/DisplayAddress;

    .line 72
    if-nez v4, :cond_2

    .line 74
    const/4 v4, 0x0

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/server/display/layout/Layout;->getByAddress(Landroid/view/DisplayAddress;)Lcom/android/server/display/layout/Layout$Display;

    .line 79
    move-result-object v4

    .line 80
    goto :goto_1

    .line 81
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 85
    const-string v2, "Display("

    .line 87
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    const-string v1, ") has a cyclic lead display"

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object v0

    .line 102
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 105
    throw p0

    .line 106
    :cond_4
    iget v2, v3, Lcom/android/server/display/layout/Layout$Display;->mLogicalDisplayId:I

    .line 108
    iput v2, v1, Lcom/android/server/display/layout/Layout$Display;->mLeadDisplayId:I

    .line 110
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 112
    goto :goto_0

    .line 113
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    .line 117
    const-string v2, "Lead display("

    .line 119
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    const-string v2, ") should be in the same display group of the display("

    .line 127
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    const-string v1, ")"

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object v0

    .line 142
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 145
    throw p0

    .line 146
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    .line 150
    const-string v1, "Cannot find a lead display whose address is "

    .line 152
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    move-result-object v0

    .line 162
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 165
    throw p0

    .line 166
    :cond_7
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    .line 3
    invoke-interface {p0}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
