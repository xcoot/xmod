.class public abstract Lcom/android/server/broadcastradio/aidl/ConversionUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static convertChunkToTargetSdkVersion(Landroid/hardware/radio/ProgramList$Chunk;I)Landroid/hardware/radio/ProgramList$Chunk;
    .locals 5

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Chunk;->getModified()Ljava/util/Set;

    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 26
    invoke-static {v2, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->programInfoMeetsSdkVersionRequirement(Landroid/hardware/radio/RadioManager$ProgramInfo;I)Z

    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_0

    .line 32
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    new-instance v1, Landroid/util/ArraySet;

    .line 38
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 41
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Chunk;->getRemoved()Ljava/util/Set;

    .line 44
    move-result-object v2

    .line 45
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 48
    move-result-object v2

    .line 49
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_3

    .line 55
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Landroid/hardware/radio/UniqueProgramIdentifier;

    .line 61
    invoke-virtual {v3}, Landroid/hardware/radio/UniqueProgramIdentifier;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 64
    move-result-object v4

    .line 65
    invoke-static {v4, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierMeetsSdkVersionRequirement(Landroid/hardware/radio/ProgramSelector$Identifier;I)Z

    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_2

    .line 71
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    new-instance p1, Landroid/hardware/radio/ProgramList$Chunk;

    .line 77
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Chunk;->isPurge()Z

    .line 80
    move-result v2

    .line 81
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Chunk;->isComplete()Z

    .line 84
    move-result p0

    .line 85
    invoke-direct {p1, v2, p0, v0, v1}, Landroid/hardware/radio/ProgramList$Chunk;-><init>(ZZLjava/util/Set;Ljava/util/Set;)V

    .line 88
    return-object p1
.end method

.method public static filterToHalProgramFilter(Landroid/hardware/radio/ProgramList$Filter;)Landroid/hardware/broadcastradio/ProgramFilter;
    .locals 7

    .line 1
    new-instance v0, Landroid/hardware/broadcastradio/ProgramFilter;

    .line 3
    invoke-direct {v0}, Landroid/hardware/broadcastradio/ProgramFilter;-><init>()V

    .line 6
    new-instance v1, Landroid/util/IntArray;

    .line 8
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifierTypes()Ljava/util/Set;

    .line 11
    move-result-object v2

    .line 12
    invoke-interface {v2}, Ljava/util/Set;->size()I

    .line 15
    move-result v2

    .line 16
    invoke-direct {v1, v2}, Landroid/util/IntArray;-><init>(I)V

    .line 19
    new-instance v2, Ljava/util/ArrayList;

    .line 21
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 24
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifierTypes()Ljava/util/Set;

    .line 27
    move-result-object v3

    .line 28
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object v3

    .line 32
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_0

    .line 38
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Ljava/lang/Integer;

    .line 44
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 47
    move-result v4

    .line 48
    invoke-virtual {v1, v4}, Landroid/util/IntArray;->add(I)V

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifiers()Ljava/util/Set;

    .line 55
    move-result-object v3

    .line 56
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 59
    move-result-object v3

    .line 60
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_2

    .line 66
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    move-result-object v4

    .line 70
    check-cast v4, Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 72
    invoke-static {v4}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierToHalProgramIdentifier(Landroid/hardware/radio/ProgramSelector$Identifier;)Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 75
    move-result-object v5

    .line 76
    iget v6, v5, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    .line 78
    if-eqz v6, :cond_1

    .line 80
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    goto :goto_1

    .line 84
    :cond_1
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 87
    move-result-object v4

    .line 88
    const-string v5, "BcRadioAidlSrv.convert"

    .line 90
    const-string v6, "Invalid identifiers: %s"

    .line 92
    invoke-static {v5, v6, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    .line 99
    move-result-object v1

    .line 100
    iput-object v1, v0, Landroid/hardware/broadcastradio/ProgramFilter;->identifierTypes:[I

    .line 102
    new-instance v1, Lcom/android/server/broadcastradio/aidl/ConversionUtils$$ExternalSyntheticLambda0;

    .line 104
    const/4 v3, 0x0

    .line 105
    invoke-direct {v1, v3}, Lcom/android/server/broadcastradio/aidl/ConversionUtils$$ExternalSyntheticLambda0;-><init>(I)V

    .line 108
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    .line 111
    move-result-object v1

    .line 112
    check-cast v1, [Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 114
    iput-object v1, v0, Landroid/hardware/broadcastradio/ProgramFilter;->identifiers:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 116
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->areCategoriesIncluded()Z

    .line 119
    move-result v1

    .line 120
    iput-boolean v1, v0, Landroid/hardware/broadcastradio/ProgramFilter;->includeCategories:Z

    .line 122
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->areModificationsExcluded()Z

    .line 125
    move-result p0

    .line 126
    iput-boolean p0, v0, Landroid/hardware/broadcastradio/ProgramFilter;->excludeModifications:Z

    .line 128
    return-object v0
.end method

.method public static identifierFromHalProgramIdentifier(Landroid/hardware/broadcastradio/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;
    .locals 4

    .line 1
    iget v0, p0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return-object v1

    .line 7
    :cond_0
    const/4 v2, 0x5

    .line 8
    const/16 v3, 0xe

    .line 10
    if-ne v0, v2, :cond_1

    .line 12
    move v0, v3

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    if-ne v0, v3, :cond_3

    .line 16
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/radio/Flags;->hdRadioImproved()Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 22
    const/16 v0, 0xf

    .line 24
    goto :goto_0

    .line 25
    :cond_2
    return-object v1

    .line 26
    :cond_3
    :goto_0
    new-instance v1, Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 28
    iget-wide v2, p0, Landroid/hardware/broadcastradio/ProgramIdentifier;->value:J

    .line 30
    invoke-direct {v1, v0, v2, v3}, Landroid/hardware/radio/ProgramSelector$Identifier;-><init>(IJ)V

    .line 33
    return-object v1
.end method

.method public static identifierMeetsSdkVersionRequirement(Landroid/hardware/radio/ProgramSelector$Identifier;I)Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/radio/Flags;->hdRadioImproved()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    const-wide/32 v2, 0x120927cf

    .line 11
    invoke-static {v2, v3, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 17
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    .line 20
    move-result v0

    .line 21
    const/16 v2, 0xf

    .line 23
    if-ne v0, v2, :cond_0

    .line 25
    return v1

    .line 26
    :cond_0
    const-wide/32 v2, 0xf9a4b7c

    .line 29
    invoke-static {v2, v3, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 32
    move-result p1

    .line 33
    const/4 v0, 0x1

    .line 34
    if-nez p1, :cond_2

    .line 36
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    .line 39
    move-result p0

    .line 40
    const/16 p1, 0xe

    .line 42
    if-eq p0, p1, :cond_1

    .line 44
    move v1, v0

    .line 45
    :cond_1
    return v1

    .line 46
    :cond_2
    return v0
.end method

.method public static identifierToHalProgramIdentifier(Landroid/hardware/radio/ProgramSelector$Identifier;)Landroid/hardware/broadcastradio/ProgramIdentifier;
    .locals 5

    .line 1
    new-instance v0, Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 3
    invoke-direct {v0}, Landroid/hardware/broadcastradio/ProgramIdentifier;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x5

    .line 11
    const/16 v3, 0xe

    .line 13
    if-ne v1, v3, :cond_0

    .line 15
    iput v2, v0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/radio/Flags;->hdRadioImproved()Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 24
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    .line 27
    move-result v1

    .line 28
    const/16 v4, 0xf

    .line 30
    if-ne v1, v4, :cond_1

    .line 32
    iput v3, v0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    .line 38
    move-result v1

    .line 39
    iput v1, v0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    .line 45
    move-result v1

    .line 46
    iput v1, v0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    .line 48
    :goto_0
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getValue()J

    .line 51
    move-result-wide v3

    .line 52
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    .line 55
    move-result p0

    .line 56
    if-ne p0, v2, :cond_3

    .line 58
    const-wide/32 v1, 0xffff

    .line 61
    and-long/2addr v1, v3

    .line 62
    const/16 p0, 0x10

    .line 64
    ushr-long/2addr v3, p0

    .line 65
    const/16 p0, 0x20

    .line 67
    shl-long/2addr v3, p0

    .line 68
    or-long/2addr v1, v3

    .line 69
    iput-wide v1, v0, Landroid/hardware/broadcastradio/ProgramIdentifier;->value:J

    .line 71
    goto :goto_1

    .line 72
    :cond_3
    iput-wide v3, v0, Landroid/hardware/broadcastradio/ProgramIdentifier;->value:J

    .line 74
    :goto_1
    return-object v0
.end method

.method public static identifierTypeToProgramType(I)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    if-eq p0, v0, :cond_2

    .line 5
    if-eq p0, v1, :cond_2

    .line 7
    const/4 v0, 0x3

    .line 8
    const/4 v1, 0x4

    .line 9
    if-eq p0, v0, :cond_2

    .line 11
    const/16 v0, 0x2714

    .line 13
    if-eq p0, v0, :cond_2

    .line 15
    packed-switch p0, :pswitch_data_0

    .line 18
    packed-switch p0, :pswitch_data_1

    .line 21
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/radio/Flags;->hdRadioImproved()Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 27
    const/16 v0, 0xf

    .line 29
    if-ne p0, v0, :cond_0

    .line 31
    return v1

    .line 32
    :cond_0
    const/16 v0, 0x3e8

    .line 34
    if-lt p0, v0, :cond_1

    .line 36
    const/16 v0, 0x7cf

    .line 38
    if-gt p0, v0, :cond_1

    .line 40
    return p0

    .line 41
    :cond_1
    const/4 p0, 0x0

    .line 42
    return p0

    .line 43
    :pswitch_0
    const/4 p0, 0x7

    .line 44
    return p0

    .line 45
    :pswitch_1
    const/4 p0, 0x6

    .line 46
    return p0

    .line 47
    :pswitch_2
    const/4 p0, 0x5

    .line 48
    return p0

    .line 49
    :cond_2
    return v1

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 67
    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static isValidHalProgramSelector(Landroid/hardware/broadcastradio/ProgramSelector;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Landroid/hardware/broadcastradio/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 3
    iget p0, p0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p0, v0, :cond_1

    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq p0, v1, :cond_1

    .line 11
    const/4 v1, 0x3

    .line 12
    if-eq p0, v1, :cond_1

    .line 14
    const/4 v1, 0x5

    .line 15
    if-eq p0, v1, :cond_1

    .line 17
    const/16 v1, 0x9

    .line 19
    if-eq p0, v1, :cond_1

    .line 21
    const/16 v1, 0xc

    .line 23
    if-eq p0, v1, :cond_1

    .line 25
    const/16 v1, 0x3e8

    .line 27
    if-lt p0, v1, :cond_0

    .line 29
    const/16 v1, 0x7cf

    .line 31
    if-gt p0, v1, :cond_0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    :cond_1
    :goto_0
    return v0
.end method

.method public static programInfoFromHalProgramInfo(Landroid/hardware/broadcastradio/ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;
    .locals 13

    .line 1
    iget-object v0, p0, Landroid/hardware/broadcastradio/ProgramInfo;->selector:Landroid/hardware/broadcastradio/ProgramSelector;

    .line 3
    invoke-static {v0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->isValidHalProgramSelector(Landroid/hardware/broadcastradio/ProgramSelector;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_4

    .line 9
    iget-object v0, p0, Landroid/hardware/broadcastradio/ProgramInfo;->logicallyTunedTo:Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 11
    iget v0, v0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    .line 13
    const/16 v1, 0x7cf

    .line 15
    const/16 v2, 0x3e8

    .line 17
    const/4 v3, 0x1

    .line 18
    if-eq v0, v3, :cond_0

    .line 20
    const/4 v4, 0x2

    .line 21
    if-eq v0, v4, :cond_0

    .line 23
    const/4 v4, 0x3

    .line 24
    if-eq v0, v4, :cond_0

    .line 26
    const/4 v4, 0x5

    .line 27
    if-eq v0, v4, :cond_0

    .line 29
    const/16 v4, 0x9

    .line 31
    if-eq v0, v4, :cond_0

    .line 33
    const/16 v4, 0xc

    .line 35
    if-eq v0, v4, :cond_0

    .line 37
    if-lt v0, v2, :cond_4

    .line 39
    if-gt v0, v1, :cond_4

    .line 41
    :cond_0
    iget-object v0, p0, Landroid/hardware/broadcastradio/ProgramInfo;->physicallyTunedTo:Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 43
    iget v0, v0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    .line 45
    if-eq v0, v3, :cond_1

    .line 47
    const/16 v3, 0x8

    .line 49
    if-eq v0, v3, :cond_1

    .line 51
    const/16 v3, 0xa

    .line 53
    if-eq v0, v3, :cond_1

    .line 55
    const/16 v3, 0xd

    .line 57
    if-eq v0, v3, :cond_1

    .line 59
    if-lt v0, v2, :cond_4

    .line 61
    if-gt v0, v1, :cond_4

    .line 63
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    .line 65
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 68
    iget-object v0, p0, Landroid/hardware/broadcastradio/ProgramInfo;->relatedContent:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 70
    if-eqz v0, :cond_3

    .line 72
    const/4 v0, 0x0

    .line 73
    :goto_0
    iget-object v1, p0, Landroid/hardware/broadcastradio/ProgramInfo;->relatedContent:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 75
    array-length v2, v1

    .line 76
    if-ge v0, v2, :cond_3

    .line 78
    aget-object v1, v1, v0

    .line 80
    invoke-static {v1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierFromHalProgramIdentifier(Landroid/hardware/broadcastradio/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 83
    move-result-object v1

    .line 84
    if-eqz v1, :cond_2

    .line 86
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 91
    goto :goto_0

    .line 92
    :cond_3
    new-instance v0, Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 94
    iget-object v1, p0, Landroid/hardware/broadcastradio/ProgramInfo;->selector:Landroid/hardware/broadcastradio/ProgramSelector;

    .line 96
    invoke-static {v1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->programSelectorFromHalProgramSelector(Landroid/hardware/broadcastradio/ProgramSelector;)Landroid/hardware/radio/ProgramSelector;

    .line 99
    move-result-object v5

    .line 100
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v1, p0, Landroid/hardware/broadcastradio/ProgramInfo;->logicallyTunedTo:Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 105
    invoke-static {v1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierFromHalProgramIdentifier(Landroid/hardware/broadcastradio/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 108
    move-result-object v6

    .line 109
    iget-object v1, p0, Landroid/hardware/broadcastradio/ProgramInfo;->physicallyTunedTo:Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 111
    invoke-static {v1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierFromHalProgramIdentifier(Landroid/hardware/broadcastradio/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 114
    move-result-object v7

    .line 115
    iget v9, p0, Landroid/hardware/broadcastradio/ProgramInfo;->infoFlags:I

    .line 117
    iget v10, p0, Landroid/hardware/broadcastradio/ProgramInfo;->signalQuality:I

    .line 119
    iget-object v1, p0, Landroid/hardware/broadcastradio/ProgramInfo;->metadata:[Landroid/hardware/broadcastradio/Metadata;

    .line 121
    invoke-static {v1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->radioMetadataFromHalMetadata([Landroid/hardware/broadcastradio/Metadata;)Landroid/hardware/radio/RadioMetadata;

    .line 124
    move-result-object v11

    .line 125
    iget-object p0, p0, Landroid/hardware/broadcastradio/ProgramInfo;->vendorInfo:[Landroid/hardware/broadcastradio/VendorKeyValue;

    .line 127
    invoke-static {p0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->vendorInfoFromHalVendorKeyValues([Landroid/hardware/broadcastradio/VendorKeyValue;)Ljava/util/Map;

    .line 130
    move-result-object v12

    .line 131
    move-object v4, v0

    .line 132
    invoke-direct/range {v4 .. v12}, Landroid/hardware/radio/RadioManager$ProgramInfo;-><init>(Landroid/hardware/radio/ProgramSelector;Landroid/hardware/radio/ProgramSelector$Identifier;Landroid/hardware/radio/ProgramSelector$Identifier;Ljava/util/Collection;IILandroid/hardware/radio/RadioMetadata;Ljava/util/Map;)V

    .line 135
    return-object v0

    .line 136
    :cond_4
    const/4 p0, 0x0

    .line 137
    return-object p0
.end method

.method public static programInfoMeetsSdkVersionRequirement(Landroid/hardware/radio/RadioManager$ProgramInfo;I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->programSelectorMeetsSdkVersionRequirement(ILandroid/hardware/radio/ProgramSelector;)Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 12
    return v1

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getLogicallyTunedTo()Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierMeetsSdkVersionRequirement(Landroid/hardware/radio/ProgramSelector$Identifier;I)Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_4

    .line 23
    invoke-virtual {p0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getPhysicallyTunedTo()Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierMeetsSdkVersionRequirement(Landroid/hardware/radio/ProgramSelector$Identifier;I)Z

    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getRelatedContent()Ljava/util/Collection;

    .line 37
    move-result-object p0

    .line 38
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 41
    move-result-object p0

    .line 42
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_3

    .line 48
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 54
    invoke-static {v0, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierMeetsSdkVersionRequirement(Landroid/hardware/radio/ProgramSelector$Identifier;I)Z

    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_2

    .line 60
    return v1

    .line 61
    :cond_3
    const/4 p0, 0x1

    .line 62
    return p0

    .line 63
    :cond_4
    :goto_0
    return v1
.end method

.method public static programSelectorFromHalProgramSelector(Landroid/hardware/broadcastradio/ProgramSelector;)Landroid/hardware/radio/ProgramSelector;
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/hardware/broadcastradio/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 3
    iget v1, v0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 8
    iget-wide v0, v0, Landroid/hardware/broadcastradio/ProgramIdentifier;->value:J

    .line 10
    const-wide/16 v3, 0x0

    .line 12
    cmp-long v0, v0, v3

    .line 14
    if-nez v0, :cond_0

    .line 16
    iget-object v0, p0, Landroid/hardware/broadcastradio/ProgramSelector;->secondaryIds:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 18
    array-length v0, v0

    .line 19
    if-nez v0, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-static {p0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->isValidHalProgramSelector(Landroid/hardware/broadcastradio/ProgramSelector;)Z

    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 28
    :goto_0
    return-object v2

    .line 29
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 31
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    const/4 v1, 0x0

    .line 35
    move v3, v1

    .line 36
    :goto_1
    iget-object v4, p0, Landroid/hardware/broadcastradio/ProgramSelector;->secondaryIds:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 38
    array-length v5, v4

    .line 39
    if-ge v3, v5, :cond_4

    .line 41
    aget-object v4, v4, v3

    .line 43
    if-eqz v4, :cond_3

    .line 45
    invoke-static {v4}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierFromHalProgramIdentifier(Landroid/hardware/broadcastradio/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 48
    move-result-object v4

    .line 49
    if-nez v4, :cond_2

    .line 51
    iget-object v4, p0, Landroid/hardware/broadcastradio/ProgramSelector;->secondaryIds:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 53
    aget-object v4, v4, v3

    .line 55
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 58
    move-result-object v4

    .line 59
    const-string v5, "BcRadioAidlSrv.convert"

    .line 61
    const-string/jumbo v6, "invalid secondary id: %s"

    .line 64
    invoke-static {v5, v6, v4}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    goto :goto_2

    .line 68
    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 73
    goto :goto_1

    .line 74
    :cond_4
    new-instance v3, Landroid/hardware/radio/ProgramSelector;

    .line 76
    iget-object v4, p0, Landroid/hardware/broadcastradio/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 78
    iget v4, v4, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    .line 80
    invoke-static {v4}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierTypeToProgramType(I)I

    .line 83
    move-result v4

    .line 84
    iget-object p0, p0, Landroid/hardware/broadcastradio/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 86
    invoke-static {p0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierFromHalProgramIdentifier(Landroid/hardware/broadcastradio/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 89
    move-result-object p0

    .line 90
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    move-object v5, p0

    .line 94
    check-cast v5, Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 96
    new-array v1, v1, [Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 98
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 101
    move-result-object v0

    .line 102
    check-cast v0, [Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 104
    invoke-direct {v3, v4, p0, v0, v2}, Landroid/hardware/radio/ProgramSelector;-><init>(ILandroid/hardware/radio/ProgramSelector$Identifier;[Landroid/hardware/radio/ProgramSelector$Identifier;[J)V

    .line 107
    return-object v3
.end method

.method public static programSelectorMeetsSdkVersionRequirement(ILandroid/hardware/radio/ProgramSelector;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierMeetsSdkVersionRequirement(Landroid/hardware/radio/ProgramSelector$Identifier;I)Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 12
    return v1

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramSelector;->getSecondaryIds()[Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 16
    move-result-object p1

    .line 17
    move v0, v1

    .line 18
    :goto_0
    array-length v2, p1

    .line 19
    if-ge v0, v2, :cond_2

    .line 21
    aget-object v2, p1, v0

    .line 23
    invoke-static {v2, p0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierMeetsSdkVersionRequirement(Landroid/hardware/radio/ProgramSelector$Identifier;I)Z

    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_1

    .line 29
    return v1

    .line 30
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const/4 p0, 0x1

    .line 34
    return p0
.end method

.method public static propertiesFromHalProperties(ILjava/lang/String;Landroid/hardware/broadcastradio/Properties;Landroid/hardware/broadcastradio/AmFmRegionConfig;[Landroid/hardware/broadcastradio/DabTableEntry;)Landroid/hardware/radio/RadioManager$ModuleProperties;
    .locals 28

    .line 1
    move-object/from16 v0, p2

    .line 3
    move-object/from16 v1, p3

    .line 5
    move-object/from16 v2, p4

    .line 7
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v3, v0, Landroid/hardware/broadcastradio/Properties;->supportedIdentifierTypes:[I

    .line 15
    new-instance v4, Landroid/util/ArraySet;

    .line 17
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 20
    const/4 v5, 0x0

    .line 21
    move v6, v5

    .line 22
    :goto_0
    array-length v7, v3

    .line 23
    if-ge v6, v7, :cond_3

    .line 25
    aget v7, v3, v6

    .line 27
    invoke-static {v7}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierTypeToProgramType(I)I

    .line 30
    move-result v7

    .line 31
    if-nez v7, :cond_0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object v8

    .line 38
    invoke-virtual {v4, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 41
    const/4 v8, 0x2

    .line 42
    if-ne v7, v8, :cond_1

    .line 44
    const/4 v8, 0x1

    .line 45
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object v8

    .line 49
    invoke-virtual {v4, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_1
    const/4 v8, 0x4

    .line 53
    if-ne v7, v8, :cond_2

    .line 55
    const/4 v7, 0x3

    .line 56
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object v7

    .line 60
    invoke-virtual {v4, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 65
    goto :goto_0

    .line 66
    :cond_3
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    .line 69
    move-result v3

    .line 70
    new-array v3, v3, [I

    .line 72
    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 75
    move-result-object v4

    .line 76
    move v6, v5

    .line 77
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    move-result v7

    .line 81
    if-eqz v7, :cond_4

    .line 83
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    move-result-object v7

    .line 87
    check-cast v7, Ljava/lang/Integer;

    .line 89
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 92
    move-result v7

    .line 93
    add-int/lit8 v8, v6, 0x1

    .line 95
    aput v7, v3, v6

    .line 97
    move v6, v8

    .line 98
    goto :goto_2

    .line 99
    :cond_4
    new-instance v4, Landroid/hardware/radio/RadioManager$ModuleProperties;

    .line 101
    iget-object v10, v0, Landroid/hardware/broadcastradio/Properties;->maker:Ljava/lang/String;

    .line 103
    iget-object v11, v0, Landroid/hardware/broadcastradio/Properties;->product:Ljava/lang/String;

    .line 105
    iget-object v12, v0, Landroid/hardware/broadcastradio/Properties;->version:Ljava/lang/String;

    .line 107
    iget-object v13, v0, Landroid/hardware/broadcastradio/Properties;->serial:Ljava/lang/String;

    .line 109
    if-nez v1, :cond_5

    .line 111
    new-array v1, v5, [Landroid/hardware/radio/RadioManager$BandDescriptor;

    .line 113
    :goto_3
    move-object/from16 v18, v1

    .line 115
    goto/16 :goto_8

    .line 117
    :cond_5
    iget-object v6, v1, Landroid/hardware/broadcastradio/AmFmRegionConfig;->ranges:[Landroid/hardware/broadcastradio/AmFmBandRange;

    .line 119
    array-length v6, v6

    .line 120
    new-instance v7, Ljava/util/ArrayList;

    .line 122
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 125
    move v8, v5

    .line 126
    :goto_4
    if-ge v8, v6, :cond_e

    .line 128
    iget-object v9, v1, Landroid/hardware/broadcastradio/AmFmRegionConfig;->ranges:[Landroid/hardware/broadcastradio/AmFmBandRange;

    .line 130
    aget-object v9, v9, v8

    .line 132
    iget v9, v9, Landroid/hardware/broadcastradio/AmFmBandRange;->lowerBound:I

    .line 134
    sget-object v14, Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;->UNKNOWN:Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

    .line 136
    sget-object v15, Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;->FM:Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

    .line 138
    const/16 v5, 0x1e

    .line 140
    if-ge v9, v5, :cond_7

    .line 142
    :cond_6
    :goto_5
    move-object v5, v14

    .line 143
    goto :goto_6

    .line 144
    :cond_7
    const/16 v5, 0x1f4

    .line 146
    if-ge v9, v5, :cond_8

    .line 148
    sget-object v5, Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;->AM_LW:Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

    .line 150
    goto :goto_6

    .line 151
    :cond_8
    const/16 v5, 0x6a9

    .line 153
    if-ge v9, v5, :cond_9

    .line 155
    sget-object v5, Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;->AM_MW:Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

    .line 157
    goto :goto_6

    .line 158
    :cond_9
    const/16 v5, 0x7530

    .line 160
    if-ge v9, v5, :cond_a

    .line 162
    sget-object v5, Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;->AM_SW:Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

    .line 164
    goto :goto_6

    .line 165
    :cond_a
    const v5, 0xea60

    .line 168
    if-ge v9, v5, :cond_b

    .line 170
    goto :goto_5

    .line 171
    :cond_b
    const v5, 0x1adb0

    .line 174
    if-ge v9, v5, :cond_6

    .line 176
    move-object v5, v15

    .line 177
    :goto_6
    if-ne v5, v14, :cond_c

    .line 179
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 182
    move-result-object v5

    .line 183
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 186
    move-result-object v5

    .line 187
    const-string v9, "BcRadioAidlSrv.convert"

    .line 189
    const-string v14, "Unknown frequency band at %d kHz"

    .line 191
    invoke-static {v9, v14, v5}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    goto :goto_7

    .line 195
    :cond_c
    const/16 v18, 0x0

    .line 197
    if-ne v5, v15, :cond_d

    .line 199
    new-instance v5, Landroid/hardware/radio/RadioManager$FmBandDescriptor;

    .line 201
    iget-object v9, v1, Landroid/hardware/broadcastradio/AmFmRegionConfig;->ranges:[Landroid/hardware/broadcastradio/AmFmBandRange;

    .line 203
    aget-object v9, v9, v8

    .line 205
    iget v14, v9, Landroid/hardware/broadcastradio/AmFmBandRange;->lowerBound:I

    .line 207
    iget v15, v9, Landroid/hardware/broadcastradio/AmFmBandRange;->upperBound:I

    .line 209
    iget v9, v9, Landroid/hardware/broadcastradio/AmFmBandRange;->spacing:I

    .line 211
    const/16 v24, 0x1

    .line 213
    const/16 v25, 0x1

    .line 215
    const/16 v19, 0x1

    .line 217
    const/16 v23, 0x1

    .line 219
    const/16 v26, 0x1

    .line 221
    const/16 v27, 0x1

    .line 223
    move-object/from16 v17, v5

    .line 225
    move/from16 v20, v14

    .line 227
    move/from16 v21, v15

    .line 229
    move/from16 v22, v9

    .line 231
    invoke-direct/range {v17 .. v27}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;-><init>(IIIIIZZZZZ)V

    .line 234
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    goto :goto_7

    .line 238
    :cond_d
    new-instance v5, Landroid/hardware/radio/RadioManager$AmBandDescriptor;

    .line 240
    iget-object v9, v1, Landroid/hardware/broadcastradio/AmFmRegionConfig;->ranges:[Landroid/hardware/broadcastradio/AmFmBandRange;

    .line 242
    aget-object v9, v9, v8

    .line 244
    iget v14, v9, Landroid/hardware/broadcastradio/AmFmBandRange;->lowerBound:I

    .line 246
    iget v15, v9, Landroid/hardware/broadcastradio/AmFmBandRange;->upperBound:I

    .line 248
    iget v9, v9, Landroid/hardware/broadcastradio/AmFmBandRange;->spacing:I

    .line 250
    const/16 v23, 0x1

    .line 252
    const/16 v19, 0x0

    .line 254
    move-object/from16 v17, v5

    .line 256
    move/from16 v20, v14

    .line 258
    move/from16 v21, v15

    .line 260
    move/from16 v22, v9

    .line 262
    invoke-direct/range {v17 .. v23}, Landroid/hardware/radio/RadioManager$AmBandDescriptor;-><init>(IIIIIZ)V

    .line 265
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    :goto_7
    add-int/lit8 v8, v8, 0x1

    .line 270
    const/4 v5, 0x0

    .line 271
    goto/16 :goto_4

    .line 273
    :cond_e
    new-instance v1, Lcom/android/server/broadcastradio/aidl/ConversionUtils$$ExternalSyntheticLambda0;

    .line 275
    const/4 v5, 0x3

    .line 276
    invoke-direct {v1, v5}, Lcom/android/server/broadcastradio/aidl/ConversionUtils$$ExternalSyntheticLambda0;-><init>(I)V

    .line 279
    invoke-interface {v7, v1}, Ljava/util/List;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    .line 282
    move-result-object v1

    .line 283
    check-cast v1, [Landroid/hardware/radio/RadioManager$BandDescriptor;

    .line 285
    goto/16 :goto_3

    .line 287
    :goto_8
    iget-object v1, v0, Landroid/hardware/broadcastradio/Properties;->supportedIdentifierTypes:[I

    .line 289
    if-nez v2, :cond_f

    .line 291
    const/4 v2, 0x0

    .line 292
    move-object/from16 v22, v2

    .line 294
    goto :goto_a

    .line 295
    :cond_f
    new-instance v5, Landroid/util/ArrayMap;

    .line 297
    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 300
    const/4 v6, 0x0

    .line 301
    :goto_9
    array-length v7, v2

    .line 302
    if-ge v6, v7, :cond_10

    .line 304
    aget-object v7, v2, v6

    .line 306
    iget-object v8, v7, Landroid/hardware/broadcastradio/DabTableEntry;->label:Ljava/lang/String;

    .line 308
    iget v7, v7, Landroid/hardware/broadcastradio/DabTableEntry;->frequencyKhz:I

    .line 310
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 313
    move-result-object v7

    .line 314
    invoke-virtual {v5, v8, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    add-int/lit8 v6, v6, 0x1

    .line 319
    goto :goto_9

    .line 320
    :cond_10
    move-object/from16 v22, v5

    .line 322
    :goto_a
    iget-object v0, v0, Landroid/hardware/broadcastradio/Properties;->vendorInfo:[Landroid/hardware/broadcastradio/VendorKeyValue;

    .line 324
    invoke-static {v0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->vendorInfoFromHalVendorKeyValues([Landroid/hardware/broadcastradio/VendorKeyValue;)Ljava/util/Map;

    .line 327
    move-result-object v23

    .line 328
    const/4 v9, 0x0

    .line 329
    const/4 v14, 0x1

    .line 330
    const/4 v15, 0x1

    .line 331
    const/16 v16, 0x0

    .line 333
    const/16 v17, 0x0

    .line 335
    const/16 v19, 0x1

    .line 337
    move-object v6, v4

    .line 338
    move/from16 v7, p0

    .line 340
    move-object/from16 v8, p1

    .line 342
    move-object/from16 v20, v3

    .line 344
    move-object/from16 v21, v1

    .line 346
    invoke-direct/range {v6 .. v23}, Landroid/hardware/radio/RadioManager$ModuleProperties;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZ[Landroid/hardware/radio/RadioManager$BandDescriptor;Z[I[ILjava/util/Map;Ljava/util/Map;)V

    .line 349
    return-object v4
.end method

.method public static radioMetadataFromHalMetadata([Landroid/hardware/broadcastradio/Metadata;)Landroid/hardware/radio/RadioMetadata;
    .locals 6

    .line 1
    new-instance v0, Landroid/hardware/radio/RadioMetadata$Builder;

    .line 3
    invoke-direct {v0}, Landroid/hardware/radio/RadioMetadata$Builder;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    array-length v3, p0

    .line 9
    if-ge v2, v3, :cond_1

    .line 11
    aget-object v3, p0, v2

    .line 13
    iget v4, v3, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    .line 15
    packed-switch v4, :pswitch_data_0

    .line 18
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/radio/Flags;->hdRadioImproved()Z

    .line 21
    move-result v3

    .line 22
    const-string v5, "BcRadioAidlSrv.convert"

    .line 24
    if-eqz v3, :cond_0

    .line 26
    packed-switch v4, :pswitch_data_1

    .line 29
    aget-object v3, p0, v2

    .line 31
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 34
    move-result-object v3

    .line 35
    const-string v4, "Ignored unknown metadata entry: %s with HD radio flag enabled"

    .line 37
    invoke-static {v5, v4, v3}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    goto/16 :goto_1

    .line 42
    :pswitch_0
    aget-object v3, p0, v2

    .line 44
    const/16 v4, 0x17

    .line 46
    invoke-virtual {v3, v4}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 49
    iget-object v3, v3, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 51
    check-cast v3, Ljava/lang/Integer;

    .line 53
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 56
    move-result v3

    .line 57
    const-string v4, "android.hardware.radio.metadata.HD_SUBCHANNELS_AVAILABLE"

    .line 59
    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putInt(Ljava/lang/String;I)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 62
    goto/16 :goto_1

    .line 64
    :pswitch_1
    aget-object v3, p0, v2

    .line 66
    const/16 v4, 0x16

    .line 68
    invoke-virtual {v3, v4}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 71
    iget-object v3, v3, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 73
    check-cast v3, Ljava/lang/String;

    .line 75
    const-string v4, "android.hardware.radio.metadata.HD_STATION_NAME_LONG"

    .line 77
    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 80
    goto/16 :goto_1

    .line 82
    :pswitch_2
    aget-object v3, p0, v2

    .line 84
    const/16 v4, 0x15

    .line 86
    invoke-virtual {v3, v4}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 89
    iget-object v3, v3, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 91
    check-cast v3, Ljava/lang/String;

    .line 93
    const-string v4, "android.hardware.radio.metadata.HD_STATION_NAME_SHORT"

    .line 95
    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 98
    goto/16 :goto_1

    .line 100
    :pswitch_3
    aget-object v3, p0, v2

    .line 102
    const/16 v4, 0x14

    .line 104
    invoke-virtual {v3, v4}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 107
    iget-object v3, v3, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 109
    check-cast v3, [Ljava/lang/String;

    .line 111
    const-string v4, "android.hardware.radio.metadata.UFIDS"

    .line 113
    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 116
    goto/16 :goto_1

    .line 118
    :pswitch_4
    aget-object v3, p0, v2

    .line 120
    const/16 v4, 0x13

    .line 122
    invoke-virtual {v3, v4}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 125
    iget-object v3, v3, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 127
    check-cast v3, Ljava/lang/String;

    .line 129
    const-string v4, "android.hardware.radio.metadata.COMMERCIAL"

    .line 131
    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 134
    goto/16 :goto_1

    .line 136
    :pswitch_5
    aget-object v3, p0, v2

    .line 138
    const/16 v4, 0x12

    .line 140
    invoke-virtual {v3, v4}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 143
    iget-object v3, v3, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 145
    check-cast v3, Ljava/lang/String;

    .line 147
    const-string v4, "android.hardware.radio.metadata.COMMENT_ACTUAL_TEXT"

    .line 149
    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 152
    goto/16 :goto_1

    .line 154
    :pswitch_6
    aget-object v3, p0, v2

    .line 156
    const/16 v4, 0x11

    .line 158
    invoke-virtual {v3, v4}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 161
    iget-object v3, v3, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 163
    check-cast v3, Ljava/lang/String;

    .line 165
    const-string v4, "android.hardware.radio.metadata.COMMENT_SHORT_DESCRIPTION"

    .line 167
    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 170
    goto/16 :goto_1

    .line 172
    :pswitch_7
    aget-object v3, p0, v2

    .line 174
    const/16 v4, 0x10

    .line 176
    invoke-virtual {v3, v4}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 179
    iget-object v3, v3, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 181
    check-cast v3, Ljava/lang/String;

    .line 183
    const-string v4, "android.hardware.radio.metadata.GENRE"

    .line 185
    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 188
    goto/16 :goto_1

    .line 190
    :cond_0
    aget-object v3, p0, v2

    .line 192
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 195
    move-result-object v3

    .line 196
    const-string v4, "Ignored unknown metadata entry: %s with HD radio flag disabled"

    .line 198
    invoke-static {v5, v4, v3}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    goto/16 :goto_1

    .line 203
    :pswitch_8
    const/16 v4, 0xf

    .line 205
    invoke-virtual {v3, v4}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 208
    iget-object v3, v3, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 210
    check-cast v3, Ljava/lang/String;

    .line 212
    const-string v4, "android.hardware.radio.metadata.DAB_COMPONENT_NAME_SHORT"

    .line 214
    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 217
    goto/16 :goto_1

    .line 219
    :pswitch_9
    const/16 v4, 0xe

    .line 221
    invoke-virtual {v3, v4}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 224
    iget-object v3, v3, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 226
    check-cast v3, Ljava/lang/String;

    .line 228
    const-string v4, "android.hardware.radio.metadata.DAB_COMPONENT_NAME"

    .line 230
    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 233
    goto/16 :goto_1

    .line 235
    :pswitch_a
    const/16 v4, 0xd

    .line 237
    invoke-virtual {v3, v4}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 240
    iget-object v3, v3, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 242
    check-cast v3, Ljava/lang/String;

    .line 244
    const-string v4, "android.hardware.radio.metadata.DAB_SERVICE_NAME_SHORT"

    .line 246
    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 249
    goto/16 :goto_1

    .line 251
    :pswitch_b
    const/16 v4, 0xc

    .line 253
    invoke-virtual {v3, v4}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 256
    iget-object v3, v3, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 258
    check-cast v3, Ljava/lang/String;

    .line 260
    const-string v4, "android.hardware.radio.metadata.DAB_SERVICE_NAME"

    .line 262
    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 265
    goto/16 :goto_1

    .line 267
    :pswitch_c
    const/16 v4, 0xb

    .line 269
    invoke-virtual {v3, v4}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 272
    iget-object v3, v3, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 274
    check-cast v3, Ljava/lang/String;

    .line 276
    const-string v4, "android.hardware.radio.metadata.DAB_ENSEMBLE_NAME_SHORT"

    .line 278
    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 281
    goto/16 :goto_1

    .line 283
    :pswitch_d
    const/16 v4, 0xa

    .line 285
    invoke-virtual {v3, v4}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 288
    iget-object v3, v3, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 290
    check-cast v3, Ljava/lang/String;

    .line 292
    const-string v4, "android.hardware.radio.metadata.DAB_ENSEMBLE_NAME"

    .line 294
    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 297
    goto/16 :goto_1

    .line 299
    :pswitch_e
    const/16 v4, 0x9

    .line 301
    invoke-virtual {v3, v4}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 304
    iget-object v3, v3, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 306
    check-cast v3, Ljava/lang/String;

    .line 308
    const-string v4, "android.hardware.radio.metadata.PROGRAM_NAME"

    .line 310
    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 313
    goto/16 :goto_1

    .line 315
    :pswitch_f
    const/16 v4, 0x8

    .line 317
    invoke-virtual {v3, v4}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 320
    iget-object v3, v3, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 322
    check-cast v3, Ljava/lang/Integer;

    .line 324
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 327
    move-result v3

    .line 328
    const-string v4, "android.hardware.radio.metadata.ART"

    .line 330
    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putInt(Ljava/lang/String;I)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 333
    goto/16 :goto_1

    .line 335
    :pswitch_10
    const/4 v4, 0x7

    .line 336
    invoke-virtual {v3, v4}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 339
    iget-object v3, v3, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 341
    check-cast v3, Ljava/lang/Integer;

    .line 343
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 346
    move-result v3

    .line 347
    const-string v4, "android.hardware.radio.metadata.ICON"

    .line 349
    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putInt(Ljava/lang/String;I)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 352
    goto :goto_1

    .line 353
    :pswitch_11
    const/4 v4, 0x6

    .line 354
    invoke-virtual {v3, v4}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 357
    iget-object v3, v3, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 359
    check-cast v3, Ljava/lang/String;

    .line 361
    const-string v4, "android.hardware.radio.metadata.ALBUM"

    .line 363
    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 366
    goto :goto_1

    .line 367
    :pswitch_12
    const/4 v4, 0x5

    .line 368
    invoke-virtual {v3, v4}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 371
    iget-object v3, v3, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 373
    check-cast v3, Ljava/lang/String;

    .line 375
    const-string v4, "android.hardware.radio.metadata.ARTIST"

    .line 377
    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 380
    goto :goto_1

    .line 381
    :pswitch_13
    const/4 v4, 0x4

    .line 382
    invoke-virtual {v3, v4}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 385
    iget-object v3, v3, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 387
    check-cast v3, Ljava/lang/String;

    .line 389
    const-string v4, "android.hardware.radio.metadata.TITLE"

    .line 391
    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 394
    goto :goto_1

    .line 395
    :pswitch_14
    const/4 v4, 0x3

    .line 396
    invoke-virtual {v3, v4}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 399
    iget-object v3, v3, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 401
    check-cast v3, Ljava/lang/String;

    .line 403
    const-string v4, "android.hardware.radio.metadata.RDS_RT"

    .line 405
    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 408
    goto :goto_1

    .line 409
    :pswitch_15
    const/4 v4, 0x2

    .line 410
    invoke-virtual {v3, v4}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 413
    iget-object v3, v3, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 415
    check-cast v3, Ljava/lang/Integer;

    .line 417
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 420
    move-result v3

    .line 421
    const-string v4, "android.hardware.radio.metadata.RBDS_PTY"

    .line 423
    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putInt(Ljava/lang/String;I)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 426
    goto :goto_1

    .line 427
    :pswitch_16
    const/4 v4, 0x1

    .line 428
    invoke-virtual {v3, v4}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 431
    iget-object v3, v3, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 433
    check-cast v3, Ljava/lang/Integer;

    .line 435
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 438
    move-result v3

    .line 439
    const-string v4, "android.hardware.radio.metadata.RDS_PTY"

    .line 441
    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putInt(Ljava/lang/String;I)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 444
    goto :goto_1

    .line 445
    :pswitch_17
    invoke-virtual {v3, v1}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    .line 448
    iget-object v3, v3, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    .line 450
    check-cast v3, Ljava/lang/String;

    .line 452
    const-string v4, "android.hardware.radio.metadata.RDS_PS"

    .line 454
    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 457
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 459
    goto/16 :goto_0

    .line 461
    :cond_1
    invoke-virtual {v0}, Landroid/hardware/radio/RadioMetadata$Builder;->build()Landroid/hardware/radio/RadioMetadata;

    .line 464
    move-result-object p0

    .line 465
    return-object p0

    .line 466
    nop

    .line 467
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    .line 503
    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static throwOnError(Ljava/lang/RuntimeException;Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 3

    .line 1
    instance-of v0, p0, Landroid/os/ServiceSpecificException;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance p0, Landroid/os/ParcelableException;

    .line 7
    new-instance v0, Ljava/lang/RuntimeException;

    .line 9
    const-string v1, ": unknown error"

    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .line 21
    return-object p0

    .line 22
    :cond_0
    check-cast p0, Landroid/os/ServiceSpecificException;

    .line 24
    iget p0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    .line 26
    packed-switch p0, :pswitch_data_0

    .line 29
    new-instance v0, Landroid/os/ParcelableException;

    .line 31
    new-instance v1, Ljava/lang/RuntimeException;

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string p1, ": unknown error ("

    .line 43
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    const-string p0, ")"

    .line 51
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 58
    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-direct {v0, v1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .line 64
    return-object v0

    .line 65
    :pswitch_0
    new-instance p0, Landroid/os/ParcelableException;

    .line 67
    new-instance v0, Ljava/lang/RuntimeException;

    .line 69
    const-string v1, ": UNKNOWN_ERROR"

    .line 71
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-direct {p0, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .line 81
    return-object p0

    .line 82
    :pswitch_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 84
    const-string v0, ": CANCELED"

    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    move-result-object p1

    .line 90
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 93
    return-object p0

    .line 94
    :pswitch_2
    new-instance p0, Landroid/os/ParcelableException;

    .line 96
    new-instance v0, Ljava/lang/RuntimeException;

    .line 98
    const-string v1, ": TIMEOUT"

    .line 100
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    move-result-object p1

    .line 104
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-direct {p0, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .line 110
    return-object p0

    .line 111
    :pswitch_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 113
    const-string v0, ": NOT_SUPPORTED"

    .line 115
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    move-result-object p1

    .line 119
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 122
    return-object p0

    .line 123
    :pswitch_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 125
    const-string v0, ": INVALID_STATE"

    .line 127
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    move-result-object p1

    .line 131
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 134
    return-object p0

    .line 135
    :pswitch_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 137
    const-string v0, ": INVALID_ARGUMENTS"

    .line 139
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    move-result-object p1

    .line 143
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 146
    return-object p0

    .line 147
    :pswitch_6
    new-instance p0, Landroid/os/ParcelableException;

    .line 149
    new-instance v0, Ljava/lang/RuntimeException;

    .line 151
    const-string v1, ": INTERNAL_ERROR"

    .line 153
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 156
    move-result-object p1

    .line 157
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 160
    invoke-direct {p0, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .line 163
    return-object p0

    .line 164
    nop

    .line 165
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static vendorInfoFromHalVendorKeyValues([Landroid/hardware/broadcastradio/VendorKeyValue;)Ljava/util/Map;
    .locals 6

    .line 1
    if-nez p0, :cond_0

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    .line 10
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 13
    array-length v1, p0

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    if-ge v2, v1, :cond_3

    .line 17
    aget-object v3, p0, v2

    .line 19
    iget-object v4, v3, Landroid/hardware/broadcastradio/VendorKeyValue;->key:Ljava/lang/String;

    .line 21
    if-eqz v4, :cond_2

    .line 23
    iget-object v5, v3, Landroid/hardware/broadcastradio/VendorKeyValue;->value:Ljava/lang/String;

    .line 25
    if-nez v5, :cond_1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    goto :goto_2

    .line 32
    :cond_2
    :goto_1
    iget-object v3, v3, Landroid/hardware/broadcastradio/VendorKeyValue;->value:Ljava/lang/String;

    .line 34
    filled-new-array {v4, v3}, [Ljava/lang/Object;

    .line 37
    move-result-object v3

    .line 38
    const-string v4, "BcRadioAidlSrv.convert"

    .line 40
    const-string v5, "VendorKeyValue contains invalid entry: key = %s, value = %s"

    .line 42
    invoke-static {v4, v5, v3}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_3
    return-object v0
.end method

.method public static vendorInfoToHalVendorKeyValues(Ljava/util/Map;)[Landroid/hardware/broadcastradio/VendorKeyValue;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    new-array p0, p0, [Landroid/hardware/broadcastradio/VendorKeyValue;

    .line 6
    return-object p0

    .line 7
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object p0

    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_3

    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/util/Map$Entry;

    .line 32
    new-instance v2, Landroid/hardware/broadcastradio/VendorKeyValue;

    .line 34
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Ljava/lang/String;

    .line 43
    iput-object v3, v2, Landroid/hardware/broadcastradio/VendorKeyValue;->key:Ljava/lang/String;

    .line 45
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Ljava/lang/String;

    .line 51
    iput-object v1, v2, Landroid/hardware/broadcastradio/VendorKeyValue;->value:Ljava/lang/String;

    .line 53
    iget-object v3, v2, Landroid/hardware/broadcastradio/VendorKeyValue;->key:Ljava/lang/String;

    .line 55
    if-eqz v3, :cond_2

    .line 57
    if-nez v1, :cond_1

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    :goto_1
    const-string v2, "VendorKeyValue contains invalid entry: key = %s, value = %s"

    .line 66
    filled-new-array {v3, v1}, [Ljava/lang/Object;

    .line 69
    move-result-object v1

    .line 70
    const-string v3, "BcRadioAidlSrv.convert"

    .line 72
    invoke-static {v3, v2, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    goto :goto_0

    .line 76
    :cond_3
    new-instance p0, Lcom/android/server/broadcastradio/aidl/ConversionUtils$$ExternalSyntheticLambda0;

    .line 78
    const/4 v1, 0x2

    .line 79
    invoke-direct {p0, v1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils$$ExternalSyntheticLambda0;-><init>(I)V

    .line 82
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    .line 85
    move-result-object p0

    .line 86
    check-cast p0, [Landroid/hardware/broadcastradio/VendorKeyValue;

    .line 88
    return-object p0
.end method
