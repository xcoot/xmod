.class public final Lcom/android/server/RuntimeService;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/RuntimeService;->mContext:Landroid/content/Context;

    .line 6
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/RuntimeService;->mContext:Landroid/content/Context;

    .line 3
    const-string v0, "RuntimeService"

    .line 5
    invoke-static {p0, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 8
    move-result p0

    .line 9
    if-nez p0, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    array-length p0, p3

    .line 13
    const/4 v0, 0x0

    .line 14
    move v1, v0

    .line 15
    :goto_0
    if-ge v1, p0, :cond_2

    .line 17
    aget-object v2, p3, v1

    .line 19
    const-string v3, "--proto"

    .line 21
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 27
    const/4 v0, 0x1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/i18n/timezone/I18nModuleDebug;->getDebugInfo()Lcom/android/i18n/timezone/DebugInfo;

    .line 35
    move-result-object p0

    .line 36
    if-eqz v0, :cond_3

    .line 38
    new-instance p2, Landroid/util/proto/ProtoOutputStream;

    .line 40
    invoke-direct {p2, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/i18n/timezone/DebugInfo;->getDebugEntries()Ljava/util/List;

    .line 46
    move-result-object p0

    .line 47
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object p0

    .line 51
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_5

    .line 57
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Lcom/android/i18n/timezone/DebugInfo$DebugEntry;

    .line 63
    const-wide v1, 0x20b00000001L

    .line 68
    invoke-virtual {p2, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 71
    move-result-wide v1

    .line 72
    invoke-virtual {p1}, Lcom/android/i18n/timezone/DebugInfo$DebugEntry;->getKey()Ljava/lang/String;

    .line 75
    move-result-object p3

    .line 76
    const-wide v3, 0x10900000001L

    .line 81
    invoke-virtual {p2, v3, v4, p3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 84
    const-wide v3, 0x10900000002L

    .line 89
    invoke-virtual {p1}, Lcom/android/i18n/timezone/DebugInfo$DebugEntry;->getStringValue()Ljava/lang/String;

    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p2, v3, v4, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 96
    invoke-virtual {p2, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 99
    goto :goto_2

    .line 100
    :cond_3
    const-string p1, "Core Library Debug Info: "

    .line 102
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/i18n/timezone/DebugInfo;->getDebugEntries()Ljava/util/List;

    .line 108
    move-result-object p0

    .line 109
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 112
    move-result-object p0

    .line 113
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    move-result p1

    .line 117
    if-eqz p1, :cond_4

    .line 119
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    move-result-object p1

    .line 123
    check-cast p1, Lcom/android/i18n/timezone/DebugInfo$DebugEntry;

    .line 125
    invoke-virtual {p1}, Lcom/android/i18n/timezone/DebugInfo$DebugEntry;->getKey()Ljava/lang/String;

    .line 128
    move-result-object p3

    .line 129
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 132
    const-string p3, ": \""

    .line 134
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1}, Lcom/android/i18n/timezone/DebugInfo$DebugEntry;->getStringValue()Ljava/lang/String;

    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 144
    const-string p1, "\""

    .line 146
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 149
    goto :goto_3

    .line 150
    :cond_4
    const/4 p2, 0x0

    .line 151
    :cond_5
    if-eqz v0, :cond_6

    .line 153
    invoke-virtual {p2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 156
    :cond_6
    return-void
.end method
