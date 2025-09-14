.class public abstract Lcom/android/server/am/LmkdStatsReporter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static logKillOccurred(Ljava/io/DataInputStream;II)V
    .locals 26

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    .line 2
    .line 3
    .line 4
    move-result-wide v4

    .line 5
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    .line 6
    .line 7
    .line 8
    move-result-wide v6

    .line 9
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    .line 10
    .line 11
    .line 12
    move-result-wide v8

    .line 13
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    .line 14
    .line 15
    .line 16
    move-result-wide v10

    .line 17
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    .line 18
    .line 19
    .line 20
    move-result-wide v12

    .line 21
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    .line 22
    .line 23
    .line 24
    move-result-wide v14

    .line 25
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    .line 34
    .line 35
    .line 36
    move-result v16

    .line 37
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    .line 38
    .line 39
    .line 40
    move-result v17

    .line 41
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    .line 42
    .line 43
    .line 44
    move-result v18

    .line 45
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    .line 50
    .line 51
    .line 52
    move-result v20

    .line 53
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    .line 54
    .line 55
    .line 56
    move-result v21

    .line 57
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v19

    .line 65
    packed-switch v2, :pswitch_data_0

    .line 66
    .line 67
    .line 68
    const/16 v22, 0x0

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :pswitch_0
    const/16 v22, 0xa

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :pswitch_1
    const/16 v22, 0x9

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :pswitch_2
    const/16 v22, 0x8

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :pswitch_3
    const/16 v22, 0x7

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :pswitch_4
    const/16 v22, 0x6

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :pswitch_5
    const/16 v22, 0x5

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :pswitch_6
    const/16 v22, 0x4

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :pswitch_7
    const/16 v22, 0x3

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :pswitch_8
    const/16 v22, 0x2

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :pswitch_9
    const/16 v22, 0x1

    .line 99
    .line 100
    :goto_0
    const/16 v23, 0x33

    .line 101
    .line 102
    move/from16 v24, v0

    .line 103
    .line 104
    move/from16 v0, v23

    .line 105
    .line 106
    move/from16 v25, v2

    .line 107
    .line 108
    move-object/from16 v2, v19

    .line 109
    .line 110
    move/from16 p0, v3

    .line 111
    .line 112
    move/from16 v19, v22

    .line 113
    .line 114
    move/from16 v22, p1

    .line 115
    .line 116
    move/from16 v23, p2

    .line 117
    .line 118
    invoke-static/range {v0 .. v23}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IJJJJJJIIIIIIII)V

    .line 119
    .line 120
    .line 121
    move/from16 v0, p0

    .line 122
    .line 123
    move/from16 v2, v24

    .line 124
    .line 125
    move/from16 v1, v25

    .line 126
    .line 127
    invoke-static {v0, v2, v1}, Lcom/android/server/am/SecLmkdStats;->noteLmkKillOccurred(III)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :catch_0
    const-string v0, "ActivityManager"

    .line 132
    .line 133
    const-string v1, "Invalid buffer data. Failed to log LMK_KILL_OCCURRED"

    .line 134
    .line 135
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
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
