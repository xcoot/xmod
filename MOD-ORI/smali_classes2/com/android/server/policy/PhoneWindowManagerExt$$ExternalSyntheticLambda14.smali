.class public final synthetic Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda14;->f$0:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda14;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda14;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v13, v0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda14;->f$0:I

    .line 4
    .line 5
    iget v14, v0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda14;->f$1:I

    .line 6
    .line 7
    iget v15, v0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda14;->f$2:I

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v16

    .line 13
    :try_start_0
    new-instance v12, Landroid/app/Instrumentation;

    .line 14
    .line 15
    invoke-direct {v12}, Landroid/app/Instrumentation;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v11, Landroid/view/KeyEvent;

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    const/4 v7, 0x0

    .line 22
    const/4 v8, 0x0

    .line 23
    const/4 v9, -0x1

    .line 24
    const/4 v10, 0x0

    .line 25
    const/16 v18, 0x0

    .line 26
    .line 27
    move-object v0, v11

    .line 28
    move-wide/from16 v1, v16

    .line 29
    .line 30
    move-wide/from16 v3, v16

    .line 31
    .line 32
    move v6, v13

    .line 33
    move-object/from16 v19, v11

    .line 34
    .line 35
    move v11, v14

    .line 36
    move/from16 v20, v14

    .line 37
    .line 38
    move-object v14, v12

    .line 39
    move/from16 v12, v18

    .line 40
    .line 41
    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 42
    .line 43
    .line 44
    move-object/from16 v0, v19

    .line 45
    .line 46
    invoke-virtual {v0, v15}, Landroid/view/KeyEvent;->semSetDisplayId(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v14, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 50
    .line 51
    .line 52
    new-instance v12, Landroid/view/KeyEvent;

    .line 53
    .line 54
    const/4 v5, 0x1

    .line 55
    const/4 v7, 0x0

    .line 56
    const/4 v8, 0x0

    .line 57
    const/4 v9, -0x1

    .line 58
    const/4 v10, 0x0

    .line 59
    const/16 v18, 0x0

    .line 60
    .line 61
    move-object v0, v12

    .line 62
    move-wide/from16 v1, v16

    .line 63
    .line 64
    move-wide/from16 v3, v16

    .line 65
    .line 66
    move v6, v13

    .line 67
    move/from16 v11, v20

    .line 68
    .line 69
    move-object v13, v12

    .line 70
    move/from16 v12, v18

    .line 71
    .line 72
    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v13, v15}, Landroid/view/KeyEvent;->semSetDisplayId(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v14, v13}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    .line 85
    .line 86
    :goto_0
    return-void
.end method
