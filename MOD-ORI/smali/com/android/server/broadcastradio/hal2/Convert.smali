.class public abstract Lcom/android/server/broadcastradio/hal2/Convert;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final METADATA_KEYS:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/broadcastradio/hal2/Convert;->METADATA_KEYS:Landroid/util/SparseArray;

    .line 7
    .line 8
    new-instance v1, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    .line 9
    .line 10
    sget-object v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->STRING:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    .line 11
    .line 12
    const-string v3, "android.hardware.radio.metadata.RDS_PS"

    .line 13
    .line 14
    invoke-direct {v1, v2, v3}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    .line 22
    .line 23
    sget-object v3, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->INT:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    .line 24
    .line 25
    const-string v4, "android.hardware.radio.metadata.RDS_PTY"

    .line 26
    .line 27
    invoke-direct {v1, v3, v4}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 v4, 0x2

    .line 31
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    .line 35
    .line 36
    const-string v4, "android.hardware.radio.metadata.RBDS_PTY"

    .line 37
    .line 38
    invoke-direct {v1, v3, v4}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 v4, 0x3

    .line 42
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    new-instance v1, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    .line 46
    .line 47
    const-string v4, "android.hardware.radio.metadata.RDS_RT"

    .line 48
    .line 49
    invoke-direct {v1, v2, v4}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 v4, 0x4

    .line 53
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    new-instance v1, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    .line 57
    .line 58
    const-string v4, "android.hardware.radio.metadata.TITLE"

    .line 59
    .line 60
    invoke-direct {v1, v2, v4}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const/4 v4, 0x5

    .line 64
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    new-instance v1, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    .line 68
    .line 69
    const-string v4, "android.hardware.radio.metadata.ARTIST"

    .line 70
    .line 71
    invoke-direct {v1, v2, v4}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const/4 v4, 0x6

    .line 75
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    new-instance v1, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    .line 79
    .line 80
    const-string v4, "android.hardware.radio.metadata.ALBUM"

    .line 81
    .line 82
    invoke-direct {v1, v2, v4}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const/4 v4, 0x7

    .line 86
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    new-instance v1, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    .line 90
    .line 91
    const-string v4, "android.hardware.radio.metadata.ICON"

    .line 92
    .line 93
    invoke-direct {v1, v3, v4}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const/16 v4, 0x8

    .line 97
    .line 98
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    new-instance v1, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    .line 102
    .line 103
    const-string v4, "android.hardware.radio.metadata.ART"

    .line 104
    .line 105
    invoke-direct {v1, v3, v4}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const/16 v3, 0x9

    .line 109
    .line 110
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    new-instance v1, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    .line 114
    .line 115
    const-string v3, "android.hardware.radio.metadata.PROGRAM_NAME"

    .line 116
    .line 117
    invoke-direct {v1, v2, v3}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const/16 v3, 0xa

    .line 121
    .line 122
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    new-instance v1, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    .line 126
    .line 127
    const-string v3, "android.hardware.radio.metadata.DAB_ENSEMBLE_NAME"

    .line 128
    .line 129
    invoke-direct {v1, v2, v3}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const/16 v3, 0xb

    .line 133
    .line 134
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    new-instance v1, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    .line 138
    .line 139
    const-string v3, "android.hardware.radio.metadata.DAB_ENSEMBLE_NAME_SHORT"

    .line 140
    .line 141
    invoke-direct {v1, v2, v3}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    const/16 v3, 0xc

    .line 145
    .line 146
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    new-instance v1, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    .line 150
    .line 151
    const-string v3, "android.hardware.radio.metadata.DAB_SERVICE_NAME"

    .line 152
    .line 153
    invoke-direct {v1, v2, v3}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    const/16 v3, 0xd

    .line 157
    .line 158
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    new-instance v1, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    .line 162
    .line 163
    const-string v3, "android.hardware.radio.metadata.DAB_SERVICE_NAME_SHORT"

    .line 164
    .line 165
    invoke-direct {v1, v2, v3}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    const/16 v3, 0xe

    .line 169
    .line 170
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    new-instance v1, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    .line 174
    .line 175
    const-string v3, "android.hardware.radio.metadata.DAB_COMPONENT_NAME"

    .line 176
    .line 177
    invoke-direct {v1, v2, v3}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    const/16 v3, 0xf

    .line 181
    .line 182
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    new-instance v1, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    .line 186
    .line 187
    const-string v3, "android.hardware.radio.metadata.DAB_COMPONENT_NAME_SHORT"

    .line 188
    .line 189
    invoke-direct {v1, v2, v3}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    const/16 v2, 0x10

    .line 193
    .line 194
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    return-void
.end method

.method public static programFilterToHal(Landroid/hardware/radio/ProgramList$Filter;)Landroid/hardware/broadcastradio/V2_0/ProgramFilter;
    .locals 5

    .line 1
    new-instance v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifierTypes:Ljava/util/ArrayList;

    .line 12
    .line 13
    new-instance v2, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v2, v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifiers:Ljava/util/ArrayList;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    iput-boolean v2, v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->includeCategories:Z

    .line 22
    .line 23
    iput-boolean v2, v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->excludeModifications:Z

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifierTypes()Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-interface {v2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    new-instance v3, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda5;

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    invoke-direct {v3, v4, v1}, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifiers()Ljava/util/Set;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda5;

    .line 51
    .line 52
    const/4 v3, 0x2

    .line 53
    invoke-direct {v2, v3, v0}, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->areCategoriesIncluded()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    iput-boolean v1, v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->includeCategories:Z

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->areModificationsExcluded()Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    iput-boolean p0, v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->excludeModifications:Z

    .line 70
    .line 71
    return-object v0
.end method

.method public static programIdentifierFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;
    .locals 4

    .line 1
    iget v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->type:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    new-instance v0, Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 8
    .line 9
    iget v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->type:I

    .line 10
    .line 11
    iget-wide v2, p0, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->value:J

    .line 12
    .line 13
    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/radio/ProgramSelector$Identifier;-><init>(IJ)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static programInfoFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;
    .locals 13

    .line 1
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->relatedContent:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, v2}, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda0;-><init>(I)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    move-object v5, v0

    .line 26
    check-cast v5, Ljava/util/Collection;

    .line 27
    .line 28
    new-instance v0, Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 29
    .line 30
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->selector:Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    .line 31
    .line 32
    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/Convert;->programSelectorFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramSelector;)Landroid/hardware/radio/ProgramSelector;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-object v1, v2

    .line 40
    check-cast v1, Landroid/hardware/radio/ProgramSelector;

    .line 41
    .line 42
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->logicallyTunedTo:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 43
    .line 44
    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/Convert;->programIdentifierFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->physicallyTunedTo:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 49
    .line 50
    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/Convert;->programIdentifierFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    iget v6, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->infoFlags:I

    .line 55
    .line 56
    iget v7, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->signalQuality:I

    .line 57
    .line 58
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->metadata:Ljava/util/ArrayList;

    .line 59
    .line 60
    new-instance v8, Landroid/hardware/radio/RadioMetadata$Builder;

    .line 61
    .line 62
    invoke-direct {v8}, Landroid/hardware/radio/RadioMetadata$Builder;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v9

    .line 73
    if-eqz v9, :cond_12

    .line 74
    .line 75
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v9

    .line 79
    check-cast v9, Landroid/hardware/broadcastradio/V2_0/Metadata;

    .line 80
    .line 81
    sget-object v10, Lcom/android/server/broadcastradio/hal2/Convert;->METADATA_KEYS:Landroid/util/SparseArray;

    .line 82
    .line 83
    iget v11, v9, Landroid/hardware/broadcastradio/V2_0/Metadata;->key:I

    .line 84
    .line 85
    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v10

    .line 89
    check-cast v10, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    .line 90
    .line 91
    if-nez v10, :cond_10

    .line 92
    .line 93
    new-instance v10, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v11, "Ignored unknown metadata entry: "

    .line 96
    .line 97
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget v9, v9, Landroid/hardware/broadcastradio/V2_0/Metadata;->key:I

    .line 101
    .line 102
    const/4 v11, 0x1

    .line 103
    if-ne v9, v11, :cond_0

    .line 104
    .line 105
    const-string v9, "RDS_PS"

    .line 106
    .line 107
    goto/16 :goto_1

    .line 108
    .line 109
    :cond_0
    const/4 v11, 0x2

    .line 110
    if-ne v9, v11, :cond_1

    .line 111
    .line 112
    const-string v9, "RDS_PTY"

    .line 113
    .line 114
    goto/16 :goto_1

    .line 115
    .line 116
    :cond_1
    const/4 v11, 0x3

    .line 117
    if-ne v9, v11, :cond_2

    .line 118
    .line 119
    const-string v9, "RBDS_PTY"

    .line 120
    .line 121
    goto/16 :goto_1

    .line 122
    .line 123
    :cond_2
    const/4 v11, 0x4

    .line 124
    if-ne v9, v11, :cond_3

    .line 125
    .line 126
    const-string v9, "RDS_RT"

    .line 127
    .line 128
    goto/16 :goto_1

    .line 129
    .line 130
    :cond_3
    const/4 v11, 0x5

    .line 131
    if-ne v9, v11, :cond_4

    .line 132
    .line 133
    const-string v9, "SONG_TITLE"

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_4
    const/4 v11, 0x6

    .line 137
    if-ne v9, v11, :cond_5

    .line 138
    .line 139
    const-string v9, "SONG_ARTIST"

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_5
    const/4 v11, 0x7

    .line 143
    if-ne v9, v11, :cond_6

    .line 144
    .line 145
    const-string v9, "SONG_ALBUM"

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_6
    const/16 v11, 0x8

    .line 149
    .line 150
    if-ne v9, v11, :cond_7

    .line 151
    .line 152
    const-string v9, "STATION_ICON"

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_7
    const/16 v11, 0x9

    .line 156
    .line 157
    if-ne v9, v11, :cond_8

    .line 158
    .line 159
    const-string v9, "ALBUM_ART"

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_8
    const/16 v11, 0xa

    .line 163
    .line 164
    if-ne v9, v11, :cond_9

    .line 165
    .line 166
    const-string v9, "PROGRAM_NAME"

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_9
    const/16 v11, 0xb

    .line 170
    .line 171
    if-ne v9, v11, :cond_a

    .line 172
    .line 173
    const-string v9, "DAB_ENSEMBLE_NAME"

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_a
    const/16 v11, 0xc

    .line 177
    .line 178
    if-ne v9, v11, :cond_b

    .line 179
    .line 180
    const-string v9, "DAB_ENSEMBLE_NAME_SHORT"

    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_b
    const/16 v11, 0xd

    .line 184
    .line 185
    if-ne v9, v11, :cond_c

    .line 186
    .line 187
    const-string v9, "DAB_SERVICE_NAME"

    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_c
    const/16 v11, 0xe

    .line 191
    .line 192
    if-ne v9, v11, :cond_d

    .line 193
    .line 194
    const-string v9, "DAB_SERVICE_NAME_SHORT"

    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_d
    const/16 v11, 0xf

    .line 198
    .line 199
    if-ne v9, v11, :cond_e

    .line 200
    .line 201
    const-string v9, "DAB_COMPONENT_NAME"

    .line 202
    .line 203
    goto :goto_1

    .line 204
    :cond_e
    const/16 v11, 0x10

    .line 205
    .line 206
    if-ne v9, v11, :cond_f

    .line 207
    .line 208
    const-string v9, "DAB_COMPONENT_NAME_SHORT"

    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_f
    new-instance v11, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    const-string v12, "0x"

    .line 214
    .line 215
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-static {v11, v9}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v9

    .line 222
    :goto_1
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v9

    .line 229
    const-string v10, "BcRadio2Srv.convert"

    .line 230
    .line 231
    invoke-static {v10, v9}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .line 233
    .line 234
    goto/16 :goto_0

    .line 235
    .line 236
    :cond_10
    sget-object v11, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->STRING:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    .line 237
    .line 238
    iget-object v12, v10, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;->type:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    .line 239
    .line 240
    iget-object v10, v10, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;->key:Ljava/lang/String;

    .line 241
    .line 242
    if-ne v12, v11, :cond_11

    .line 243
    .line 244
    iget-object v9, v9, Landroid/hardware/broadcastradio/V2_0/Metadata;->stringValue:Ljava/lang/String;

    .line 245
    .line 246
    invoke-virtual {v8, v10, v9}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 247
    .line 248
    .line 249
    goto/16 :goto_0

    .line 250
    .line 251
    :cond_11
    iget-wide v11, v9, Landroid/hardware/broadcastradio/V2_0/Metadata;->intValue:J

    .line 252
    .line 253
    long-to-int v9, v11

    .line 254
    invoke-virtual {v8, v10, v9}, Landroid/hardware/radio/RadioMetadata$Builder;->putInt(Ljava/lang/String;I)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 255
    .line 256
    .line 257
    goto/16 :goto_0

    .line 258
    .line 259
    :cond_12
    invoke-virtual {v8}, Landroid/hardware/radio/RadioMetadata$Builder;->build()Landroid/hardware/radio/RadioMetadata;

    .line 260
    .line 261
    .line 262
    move-result-object v8

    .line 263
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->vendorInfo:Ljava/util/ArrayList;

    .line 264
    .line 265
    invoke-static {p0}, Lcom/android/server/broadcastradio/hal2/Convert;->vendorInfoFromHal(Ljava/util/List;)Ljava/util/Map;

    .line 266
    .line 267
    .line 268
    move-result-object v9

    .line 269
    move-object v1, v0

    .line 270
    invoke-direct/range {v1 .. v9}, Landroid/hardware/radio/RadioManager$ProgramInfo;-><init>(Landroid/hardware/radio/ProgramSelector;Landroid/hardware/radio/ProgramSelector$Identifier;Landroid/hardware/radio/ProgramSelector$Identifier;Ljava/util/Collection;IILandroid/hardware/radio/RadioMetadata;Ljava/util/Map;)V

    .line 271
    .line 272
    .line 273
    return-object v0
.end method

.method public static programSelectorFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramSelector;)Landroid/hardware/radio/ProgramSelector;
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 2
    .line 3
    iget v1, v0, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->type:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-wide v0, v0, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->value:J

    .line 9
    .line 10
    const-wide/16 v3, 0x0

    .line 11
    .line 12
    cmp-long v0, v0, v3

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->secondaryIds:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    return-object v2

    .line 25
    :cond_0
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->secondaryIds:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda0;

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    invoke-direct {v1, v3}, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda0;-><init>(I)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v1, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda0;

    .line 42
    .line 43
    const/4 v3, 0x2

    .line 44
    invoke-direct {v1, v3}, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda0;-><init>(I)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-instance v1, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda3;

    .line 52
    .line 53
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, [Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 61
    .line 62
    new-instance v1, Landroid/hardware/radio/ProgramSelector;

    .line 63
    .line 64
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 65
    .line 66
    iget v3, p0, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->type:I

    .line 67
    .line 68
    packed-switch v3, :pswitch_data_0

    .line 69
    .line 70
    .line 71
    :pswitch_0
    const/16 v4, 0x3e8

    .line 72
    .line 73
    if-lt v3, v4, :cond_1

    .line 74
    .line 75
    const/16 v4, 0x7cf

    .line 76
    .line 77
    if-gt v3, v4, :cond_1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    const/4 v3, 0x0

    .line 81
    goto :goto_0

    .line 82
    :pswitch_1
    const/4 v3, 0x7

    .line 83
    goto :goto_0

    .line 84
    :pswitch_2
    const/4 v3, 0x6

    .line 85
    goto :goto_0

    .line 86
    :pswitch_3
    const/4 v3, 0x5

    .line 87
    goto :goto_0

    .line 88
    :pswitch_4
    const/4 v3, 0x4

    .line 89
    goto :goto_0

    .line 90
    :pswitch_5
    const/4 v3, 0x2

    .line 91
    :goto_0
    invoke-static {p0}, Lcom/android/server/broadcastradio/hal2/Convert;->programIdentifierFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    invoke-direct {v1, v3, p0, v0, v2}, Landroid/hardware/radio/ProgramSelector;-><init>(ILandroid/hardware/radio/ProgramSelector$Identifier;[Landroid/hardware/radio/ProgramSelector$Identifier;[J)V

    .line 99
    .line 100
    .line 101
    return-object v1

    .line 102
    nop

    .line 103
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static programSelectorToHal(Landroid/hardware/radio/ProgramSelector;)Landroid/hardware/broadcastradio/V2_0/ProgramSelector;
    .locals 4

    .line 1
    new-instance v0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    iput v3, v1, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->type:I

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/hardware/radio/ProgramSelector$Identifier;->getValue()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    iput-wide v2, v1, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->value:J

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector;->getSecondaryIds()[Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    new-instance v1, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    const/4 v2, 0x3

    .line 35
    invoke-direct {v1, v2}, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda0;-><init>(I)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    iget-object v1, v0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->secondaryIds:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda5;

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    invoke-direct {v2, v3, v1}, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    .line 54
    .line 55
    .line 56
    return-object v0
.end method

.method public static propertiesFromHal(ILjava/lang/String;Landroid/hardware/broadcastradio/V2_0/Properties;Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;Ljava/util/List;)Landroid/hardware/radio/RadioManager$ModuleProperties;
    .locals 33

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iget-object v2, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->supportedIdentifierTypes:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    new-instance v3, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    .line 15
    .line 16
    const/4 v4, 0x2

    .line 17
    invoke-direct {v3, v4}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-interface {v2}, Ljava/util/stream/IntStream;->toArray()[I

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    new-instance v3, Landroid/util/ArraySet;

    .line 29
    .line 30
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 31
    .line 32
    .line 33
    array-length v4, v2

    .line 34
    const/4 v5, 0x0

    .line 35
    move v6, v5

    .line 36
    :goto_0
    if-ge v6, v4, :cond_4

    .line 37
    .line 38
    aget v7, v2, v6

    .line 39
    .line 40
    const/4 v8, 0x2

    .line 41
    const/4 v9, 0x4

    .line 42
    packed-switch v7, :pswitch_data_0

    .line 43
    .line 44
    .line 45
    :pswitch_0
    const/16 v10, 0x3e8

    .line 46
    .line 47
    if-lt v7, v10, :cond_0

    .line 48
    .line 49
    const/16 v10, 0x7cf

    .line 50
    .line 51
    if-gt v7, v10, :cond_0

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_0
    move v7, v5

    .line 55
    goto :goto_1

    .line 56
    :pswitch_1
    const/4 v7, 0x7

    .line 57
    goto :goto_1

    .line 58
    :pswitch_2
    const/4 v7, 0x6

    .line 59
    goto :goto_1

    .line 60
    :pswitch_3
    const/4 v7, 0x5

    .line 61
    goto :goto_1

    .line 62
    :pswitch_4
    move v7, v9

    .line 63
    goto :goto_1

    .line 64
    :pswitch_5
    move v7, v8

    .line 65
    :goto_1
    if-nez v7, :cond_1

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v10

    .line 72
    invoke-virtual {v3, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    if-ne v7, v8, :cond_2

    .line 76
    .line 77
    const/4 v8, 0x1

    .line 78
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    invoke-virtual {v3, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    :cond_2
    if-ne v7, v9, :cond_3

    .line 86
    .line 87
    const/4 v7, 0x3

    .line 88
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_4
    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    new-instance v4, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    .line 103
    .line 104
    const/4 v6, 0x2

    .line 105
    invoke-direct {v4, v6}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;-><init>(I)V

    .line 106
    .line 107
    .line 108
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-interface {v3}, Ljava/util/stream/IntStream;->toArray()[I

    .line 113
    .line 114
    .line 115
    move-result-object v17

    .line 116
    new-instance v21, Landroid/hardware/radio/RadioManager$ModuleProperties;

    .line 117
    .line 118
    iget-object v7, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->maker:Ljava/lang/String;

    .line 119
    .line 120
    iget-object v8, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->product:Ljava/lang/String;

    .line 121
    .line 122
    iget-object v9, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->version:Ljava/lang/String;

    .line 123
    .line 124
    iget-object v10, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->serial:Ljava/lang/String;

    .line 125
    .line 126
    if-nez v1, :cond_5

    .line 127
    .line 128
    new-array v1, v5, [Landroid/hardware/radio/RadioManager$BandDescriptor;

    .line 129
    .line 130
    :goto_3
    move-object v15, v1

    .line 131
    goto/16 :goto_7

    .line 132
    .line 133
    :cond_5
    iget-object v3, v1, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->ranges:Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    new-instance v4, Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 142
    .line 143
    .line 144
    iget-object v1, v1, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->ranges:Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    if-eqz v3, :cond_e

    .line 155
    .line 156
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    check-cast v3, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;

    .line 161
    .line 162
    iget v5, v3, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->lowerBound:I

    .line 163
    .line 164
    sget-object v6, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->UNKNOWN:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    .line 165
    .line 166
    sget-object v11, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->FM:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    .line 167
    .line 168
    const/16 v12, 0x1e

    .line 169
    .line 170
    if-ge v5, v12, :cond_7

    .line 171
    .line 172
    :cond_6
    :goto_5
    move-object v5, v6

    .line 173
    goto :goto_6

    .line 174
    :cond_7
    const/16 v12, 0x1f4

    .line 175
    .line 176
    if-ge v5, v12, :cond_8

    .line 177
    .line 178
    sget-object v5, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->AM_LW:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    .line 179
    .line 180
    goto :goto_6

    .line 181
    :cond_8
    const/16 v12, 0x6a9

    .line 182
    .line 183
    if-ge v5, v12, :cond_9

    .line 184
    .line 185
    sget-object v5, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->AM_MW:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    .line 186
    .line 187
    goto :goto_6

    .line 188
    :cond_9
    const/16 v12, 0x7530

    .line 189
    .line 190
    if-ge v5, v12, :cond_a

    .line 191
    .line 192
    sget-object v5, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->AM_SW:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    .line 193
    .line 194
    goto :goto_6

    .line 195
    :cond_a
    const v12, 0xea60

    .line 196
    .line 197
    .line 198
    if-ge v5, v12, :cond_b

    .line 199
    .line 200
    goto :goto_5

    .line 201
    :cond_b
    const v12, 0x1adb0

    .line 202
    .line 203
    .line 204
    if-ge v5, v12, :cond_6

    .line 205
    .line 206
    move-object v5, v11

    .line 207
    :goto_6
    if-ne v5, v6, :cond_c

    .line 208
    .line 209
    new-instance v5, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    const-string v6, "Unknown frequency band at "

    .line 212
    .line 213
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    iget v3, v3, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->lowerBound:I

    .line 217
    .line 218
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-string/jumbo v3, "kHz"

    .line 222
    .line 223
    .line 224
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    const-string v5, "BcRadio2Srv.convert"

    .line 232
    .line 233
    invoke-static {v5, v3}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    goto :goto_4

    .line 237
    :cond_c
    const/16 v23, 0x0

    .line 238
    .line 239
    if-ne v5, v11, :cond_d

    .line 240
    .line 241
    new-instance v5, Landroid/hardware/radio/RadioManager$FmBandDescriptor;

    .line 242
    .line 243
    iget v6, v3, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->lowerBound:I

    .line 244
    .line 245
    iget v11, v3, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->upperBound:I

    .line 246
    .line 247
    iget v3, v3, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->spacing:I

    .line 248
    .line 249
    const/16 v31, 0x1

    .line 250
    .line 251
    const/16 v32, 0x1

    .line 252
    .line 253
    const/16 v24, 0x1

    .line 254
    .line 255
    const/16 v28, 0x1

    .line 256
    .line 257
    const/16 v29, 0x1

    .line 258
    .line 259
    const/16 v30, 0x1

    .line 260
    .line 261
    move-object/from16 v22, v5

    .line 262
    .line 263
    move/from16 v25, v6

    .line 264
    .line 265
    move/from16 v26, v11

    .line 266
    .line 267
    move/from16 v27, v3

    .line 268
    .line 269
    invoke-direct/range {v22 .. v32}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;-><init>(IIIIIZZZZZ)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    goto :goto_4

    .line 276
    :cond_d
    new-instance v5, Landroid/hardware/radio/RadioManager$AmBandDescriptor;

    .line 277
    .line 278
    iget v6, v3, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->lowerBound:I

    .line 279
    .line 280
    iget v11, v3, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->upperBound:I

    .line 281
    .line 282
    iget v3, v3, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->spacing:I

    .line 283
    .line 284
    const/16 v28, 0x1

    .line 285
    .line 286
    const/16 v24, 0x0

    .line 287
    .line 288
    move-object/from16 v22, v5

    .line 289
    .line 290
    move/from16 v25, v6

    .line 291
    .line 292
    move/from16 v26, v11

    .line 293
    .line 294
    move/from16 v27, v3

    .line 295
    .line 296
    invoke-direct/range {v22 .. v28}, Landroid/hardware/radio/RadioManager$AmBandDescriptor;-><init>(IIIIIZ)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    goto/16 :goto_4

    .line 303
    .line 304
    :cond_e
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 305
    .line 306
    .line 307
    move-result v1

    .line 308
    new-array v1, v1, [Landroid/hardware/radio/RadioManager$BandDescriptor;

    .line 309
    .line 310
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    check-cast v1, [Landroid/hardware/radio/RadioManager$BandDescriptor;

    .line 315
    .line 316
    goto/16 :goto_3

    .line 317
    .line 318
    :goto_7
    if-nez p4, :cond_f

    .line 319
    .line 320
    const/4 v1, 0x0

    .line 321
    :goto_8
    move-object/from16 v19, v1

    .line 322
    .line 323
    goto :goto_9

    .line 324
    :cond_f
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    new-instance v3, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda0;

    .line 329
    .line 330
    const/4 v4, 0x4

    .line 331
    invoke-direct {v3, v4}, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda0;-><init>(I)V

    .line 332
    .line 333
    .line 334
    new-instance v4, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda0;

    .line 335
    .line 336
    const/4 v5, 0x5

    .line 337
    invoke-direct {v4, v5}, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda0;-><init>(I)V

    .line 338
    .line 339
    .line 340
    invoke-static {v3, v4}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    .line 341
    .line 342
    .line 343
    move-result-object v3

    .line 344
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    check-cast v1, Ljava/util/Map;

    .line 349
    .line 350
    goto :goto_8

    .line 351
    :goto_9
    iget-object v0, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->vendorInfo:Ljava/util/ArrayList;

    .line 352
    .line 353
    invoke-static {v0}, Lcom/android/server/broadcastradio/hal2/Convert;->vendorInfoFromHal(Ljava/util/List;)Ljava/util/Map;

    .line 354
    .line 355
    .line 356
    move-result-object v20

    .line 357
    const/4 v14, 0x0

    .line 358
    const/16 v16, 0x1

    .line 359
    .line 360
    const/4 v6, 0x0

    .line 361
    const/4 v11, 0x1

    .line 362
    const/4 v12, 0x1

    .line 363
    const/4 v13, 0x0

    .line 364
    move-object/from16 v3, v21

    .line 365
    .line 366
    move/from16 v4, p0

    .line 367
    .line 368
    move-object/from16 v5, p1

    .line 369
    .line 370
    move-object/from16 v18, v2

    .line 371
    .line 372
    invoke-direct/range {v3 .. v20}, Landroid/hardware/radio/RadioManager$ModuleProperties;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZ[Landroid/hardware/radio/RadioManager$BandDescriptor;Z[I[ILjava/util/Map;Ljava/util/Map;)V

    .line 373
    .line 374
    .line 375
    return-object v21

    .line 376
    nop

    .line 377
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static throwOnError(ILjava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, ": "

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const-string v1, "OK"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x1

    .line 13
    if-ne p0, v1, :cond_1

    .line 14
    .line 15
    const-string v1, "UNKNOWN_ERROR"

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v1, 0x2

    .line 19
    if-ne p0, v1, :cond_2

    .line 20
    .line 21
    const-string v1, "INTERNAL_ERROR"

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    const/4 v1, 0x3

    .line 25
    if-ne p0, v1, :cond_3

    .line 26
    .line 27
    const-string v1, "INVALID_ARGUMENTS"

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_3
    const/4 v1, 0x4

    .line 31
    if-ne p0, v1, :cond_4

    .line 32
    .line 33
    const-string v1, "INVALID_STATE"

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_4
    const/4 v1, 0x5

    .line 37
    if-ne p0, v1, :cond_5

    .line 38
    .line 39
    const-string v1, "NOT_SUPPORTED"

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_5
    const/4 v1, 0x6

    .line 43
    if-ne p0, v1, :cond_6

    .line 44
    .line 45
    const-string v1, "TIMEOUT"

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v2, "0x"

    .line 51
    .line 52
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v1, p0}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    packed-switch p0, :pswitch_data_0

    .line 67
    .line 68
    .line 69
    new-instance v0, Landroid/os/ParcelableException;

    .line 70
    .line 71
    new-instance v1, Ljava/lang/RuntimeException;

    .line 72
    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string p1, ": unknown error ("

    .line 82
    .line 83
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string p0, ")"

    .line 90
    .line 91
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-direct {v0, v1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    throw v0

    .line 105
    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 106
    .line 107
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p0

    .line 111
    :pswitch_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 112
    .line 113
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p0

    .line 117
    :pswitch_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 118
    .line 119
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p0

    .line 123
    :pswitch_3
    new-instance p0, Landroid/os/ParcelableException;

    .line 124
    .line 125
    new-instance p1, Ljava/lang/RuntimeException;

    .line 126
    .line 127
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-direct {p0, p1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .line 131
    .line 132
    .line 133
    throw p0

    .line 134
    :pswitch_4
    return-void

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static vendorInfoFromHal(Ljava/util/List;)Ljava/util/Map;
    .locals 3

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;

    .line 24
    .line 25
    iget-object v2, v1, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->key:Ljava/lang/String;

    .line 26
    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    iget-object v1, v1, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->value:Ljava/lang/String;

    .line 30
    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    :goto_1
    const-string v1, "BcRadio2Srv.convert"

    .line 39
    .line 40
    const-string v2, "VendorKeyValue contains null pointers"

    .line 41
    .line 42
    invoke-static {v1, v2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    return-object v0
.end method
