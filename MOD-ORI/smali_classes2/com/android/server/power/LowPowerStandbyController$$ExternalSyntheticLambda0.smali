.class public final synthetic Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/LowPowerStandbyController;

.field public final synthetic f$1:Landroid/os/PowerManager$LowPowerStandbyPolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/LowPowerStandbyController;Landroid/os/PowerManager$LowPowerStandbyPolicy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/LowPowerStandbyController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda0;->f$1:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/LowPowerStandbyController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda0;->f$1:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    .line 4
    .line 5
    const-string v1, "low-power-standby-policy"

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v2, Landroid/util/AtomicFile;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/power/LowPowerStandbyController;->mPolicyFile:Ljava/io/File;

    .line 13
    .line 14
    invoke-direct {v2, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 15
    .line 16
    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/util/AtomicFile;->delete()V

    .line 20
    .line 21
    .line 22
    goto/16 :goto_3

    .line 23
    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :try_start_0
    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 33
    .line 34
    .line 35
    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 36
    :try_start_1
    invoke-static {v3}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 41
    .line 42
    invoke-interface {v4, v0, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v4, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 46
    .line 47
    .line 48
    const-string v5, "identifier"

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getIdentifier()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-static {v4, v5, v6}, Lcom/android/server/power/LowPowerStandbyController;->writeTagValue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getExemptPackages()Ljava/util/Set;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-eqz v6, :cond_1

    .line 70
    .line 71
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    check-cast v6, Ljava/lang/String;

    .line 76
    .line 77
    const-string v7, "exempt-package"

    .line 78
    .line 79
    invoke-static {v4, v7, v6}, Lcom/android/server/power/LowPowerStandbyController;->writeTagValue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catch_0
    move-exception p0

    .line 84
    move-object v0, v3

    .line 85
    goto :goto_2

    .line 86
    :cond_1
    const-string v5, "allowed-reasons"

    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getAllowedReasons()I

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    invoke-interface {v4, v0, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 93
    .line 94
    .line 95
    const-string/jumbo v7, "value"

    .line 96
    .line 97
    .line 98
    invoke-interface {v4, v0, v7, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    .line 100
    .line 101
    invoke-interface {v4, v0, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getAllowedFeatures()Ljava/util/Set;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-eqz v5, :cond_2

    .line 117
    .line 118
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    check-cast v5, Ljava/lang/String;

    .line 123
    .line 124
    const-string v6, "allowed-features"

    .line 125
    .line 126
    invoke-static {v4, v6, v5}, Lcom/android/server/power/LowPowerStandbyController;->writeTagValue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_2
    invoke-interface {v4, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 131
    .line 132
    .line 133
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 137
    .line 138
    .line 139
    goto :goto_3

    .line 140
    :catch_1
    move-exception p0

    .line 141
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string v3, "Failed to write policy to file "

    .line 144
    .line 145
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    const-string v3, "LowPowerStandbyController"

    .line 160
    .line 161
    invoke-static {v3, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 165
    .line 166
    .line 167
    :goto_3
    return-void
.end method
