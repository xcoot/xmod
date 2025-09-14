.class public abstract Lcom/android/server/utils/PriorityDump;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static dump(Lcom/android/server/utils/PriorityDump$PriorityDumper;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-nez p3, :cond_0

    .line 5
    .line 6
    invoke-interface {p0, p1, p2, p3, v2}, Lcom/android/server/utils/PriorityDump$PriorityDumper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    array-length v3, p3

    .line 11
    new-array v3, v3, [Ljava/lang/String;

    .line 12
    .line 13
    move v4, v2

    .line 14
    move v5, v4

    .line 15
    move v6, v5

    .line 16
    move v7, v6

    .line 17
    :goto_0
    array-length v8, p3

    .line 18
    const/4 v9, 0x3

    .line 19
    if-ge v4, v8, :cond_7

    .line 20
    .line 21
    aget-object v8, p3, v4

    .line 22
    .line 23
    const-string v10, "--proto"

    .line 24
    .line 25
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    if-eqz v8, :cond_1

    .line 30
    .line 31
    move v7, v1

    .line 32
    goto :goto_3

    .line 33
    :cond_1
    aget-object v8, p3, v4

    .line 34
    .line 35
    const-string v10, "--dump-priority"

    .line 36
    .line 37
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    if-eqz v8, :cond_5

    .line 42
    .line 43
    add-int/lit8 v8, v4, 0x1

    .line 44
    .line 45
    array-length v10, p3

    .line 46
    if-ge v8, v10, :cond_6

    .line 47
    .line 48
    aget-object v4, p3, v8

    .line 49
    .line 50
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    const/4 v6, -0x1

    .line 54
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 55
    .line 56
    .line 57
    move-result v10

    .line 58
    sparse-switch v10, :sswitch_data_0

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :sswitch_0
    const-string v10, "HIGH"

    .line 63
    .line 64
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-nez v4, :cond_2

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    move v6, v0

    .line 72
    goto :goto_1

    .line 73
    :sswitch_1
    const-string v10, "CRITICAL"

    .line 74
    .line 75
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-nez v4, :cond_3

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    move v6, v1

    .line 83
    goto :goto_1

    .line 84
    :sswitch_2
    const-string v10, "NORMAL"

    .line 85
    .line 86
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-nez v4, :cond_4

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_4
    move v6, v2

    .line 94
    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 95
    .line 96
    .line 97
    move v6, v2

    .line 98
    goto :goto_2

    .line 99
    :pswitch_0
    move v6, v0

    .line 100
    goto :goto_2

    .line 101
    :pswitch_1
    move v6, v1

    .line 102
    goto :goto_2

    .line 103
    :pswitch_2
    move v6, v9

    .line 104
    :goto_2
    move v4, v8

    .line 105
    goto :goto_3

    .line 106
    :cond_5
    add-int/lit8 v8, v5, 0x1

    .line 107
    .line 108
    aget-object v9, p3, v4

    .line 109
    .line 110
    aput-object v9, v3, v5

    .line 111
    .line 112
    move v5, v8

    .line 113
    :cond_6
    :goto_3
    add-int/2addr v4, v1

    .line 114
    goto :goto_0

    .line 115
    :cond_7
    array-length p3, p3

    .line 116
    if-ge v5, p3, :cond_8

    .line 117
    .line 118
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p3

    .line 122
    move-object v3, p3

    .line 123
    check-cast v3, [Ljava/lang/String;

    .line 124
    .line 125
    :cond_8
    if-eq v6, v1, :cond_b

    .line 126
    .line 127
    if-eq v6, v0, :cond_a

    .line 128
    .line 129
    if-eq v6, v9, :cond_9

    .line 130
    .line 131
    invoke-interface {p0, p1, p2, v3, v7}, Lcom/android/server/utils/PriorityDump$PriorityDumper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_9
    invoke-interface {p0, p1, p2, v3, v7}, Lcom/android/server/utils/PriorityDump$PriorityDumper;->dumpNormal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :cond_a
    invoke-interface {p0, p1, p2, v3, v7}, Lcom/android/server/utils/PriorityDump$PriorityDumper;->dumpHigh(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :cond_b
    invoke-interface {p0, p1, p2, v3, v7}, Lcom/android/server/utils/PriorityDump$PriorityDumper;->dumpCritical(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :sswitch_data_0
    .sparse-switch
        -0x76664f19 -> :sswitch_2
        -0x5cfe9861 -> :sswitch_1
        0x21d5a2 -> :sswitch_0
    .end sparse-switch

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
