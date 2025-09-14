.class public final synthetic Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$Job;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

.field public final synthetic f$1:Landroid/view/autofill/IAutoFillManagerClient;

.field public final synthetic f$10:Ljava/lang/Runnable;

.field public final synthetic f$11:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

.field public final synthetic f$12:I

.field public final synthetic f$13:Landroid/os/IBinder;

.field public final synthetic f$14:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/content/ComponentName;

.field public final synthetic f$5:Landroid/view/autofill/AutofillId;

.field public final synthetic f$6:Landroid/view/autofill/AutofillValue;

.field public final synthetic f$7:J

.field public final synthetic f$8:Landroid/view/inputmethod/InlineSuggestionsRequest;

.field public final synthetic f$9:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService;Landroid/view/autofill/IAutoFillManagerClient;IILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionsResponseCallback;Lcom/android/server/autofill/Session$AugmentedAutofillErrorCallback;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;ILandroid/os/IBinder;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 3

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    move-object v1, p1

    .line 6
    iput-object v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 7
    .line 8
    move-object v1, p2

    .line 9
    iput-object v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$1:Landroid/view/autofill/IAutoFillManagerClient;

    .line 10
    .line 11
    move v1, p3

    .line 12
    iput v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$2:I

    .line 13
    .line 14
    move v1, p4

    .line 15
    iput v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$3:I

    .line 16
    .line 17
    move-object v1, p5

    .line 18
    iput-object v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$4:Landroid/content/ComponentName;

    .line 19
    .line 20
    move-object v1, p6

    .line 21
    iput-object v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$5:Landroid/view/autofill/AutofillId;

    .line 22
    .line 23
    move-object v1, p7

    .line 24
    iput-object v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$6:Landroid/view/autofill/AutofillValue;

    .line 25
    .line 26
    move-wide v1, p8

    .line 27
    iput-wide v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$7:J

    .line 28
    .line 29
    move-object v1, p10

    .line 30
    iput-object v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$8:Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 31
    .line 32
    move-object v1, p11

    .line 33
    iput-object v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$9:Ljava/util/function/Function;

    .line 34
    .line 35
    move-object v1, p12

    .line 36
    iput-object v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$10:Ljava/lang/Runnable;

    .line 37
    .line 38
    move-object/from16 v1, p13

    .line 39
    .line 40
    iput-object v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$11:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    .line 41
    .line 42
    move/from16 v1, p14

    .line 43
    .line 44
    iput v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$12:I

    .line 45
    .line 46
    move-object/from16 v1, p15

    .line 47
    .line 48
    iput-object v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$13:Landroid/os/IBinder;

    .line 49
    .line 50
    move-object/from16 v1, p16

    .line 51
    .line 52
    iput-object v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$14:Ljava/util/concurrent/atomic/AtomicReference;

    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 4
    .line 5
    iget-object v15, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$1:Landroid/view/autofill/IAutoFillManagerClient;

    .line 6
    .line 7
    iget v3, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$2:I

    .line 8
    .line 9
    iget v4, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$3:I

    .line 10
    .line 11
    iget-object v5, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$4:Landroid/content/ComponentName;

    .line 12
    .line 13
    iget-object v6, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$5:Landroid/view/autofill/AutofillId;

    .line 14
    .line 15
    iget-object v7, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$6:Landroid/view/autofill/AutofillValue;

    .line 16
    .line 17
    iget-wide v8, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$7:J

    .line 18
    .line 19
    iget-object v10, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$8:Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 20
    .line 21
    iget-object v2, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$9:Ljava/util/function/Function;

    .line 22
    .line 23
    iget-object v12, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$10:Ljava/lang/Runnable;

    .line 24
    .line 25
    iget-object v14, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$11:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    .line 26
    .line 27
    iget v13, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$12:I

    .line 28
    .line 29
    iget-object v11, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$13:Landroid/os/IBinder;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$14:Ljava/util/concurrent/atomic/AtomicReference;

    .line 32
    .line 33
    move-object/from16 v16, p1

    .line 34
    .line 35
    check-cast v16, Landroid/service/autofill/augmented/IAugmentedAutofillService;

    .line 36
    .line 37
    sget v17, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->$r8$clinit:I

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    new-instance v19, Lcom/android/internal/infra/AndroidFuture;

    .line 43
    .line 44
    move-object/from16 v17, v19

    .line 45
    .line 46
    invoke-direct/range {v19 .. v19}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 47
    .line 48
    .line 49
    move-object/from16 v18, v14

    .line 50
    .line 51
    new-instance v14, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;

    .line 52
    .line 53
    move-object/from16 v20, v0

    .line 54
    .line 55
    move-object v0, v14

    .line 56
    check-cast v2, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionsResponseCallback;

    .line 57
    .line 58
    move-object/from16 v21, v11

    .line 59
    .line 60
    move-object v11, v2

    .line 61
    move-object v2, v12

    .line 62
    check-cast v2, Lcom/android/server/autofill/Session$AugmentedAutofillErrorCallback;

    .line 63
    .line 64
    move/from16 v22, v13

    .line 65
    .line 66
    move-object v13, v2

    .line 67
    move-object/from16 v2, v16

    .line 68
    .line 69
    move-object v12, v15

    .line 70
    move-object/from16 v23, v14

    .line 71
    .line 72
    move-object/from16 v14, v18

    .line 73
    .line 74
    move-object/from16 v24, v15

    .line 75
    .line 76
    move/from16 v15, v22

    .line 77
    .line 78
    move-object/from16 v16, v21

    .line 79
    .line 80
    move-object/from16 v18, v20

    .line 81
    .line 82
    invoke-direct/range {v0 .. v18}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;-><init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService;Landroid/service/autofill/augmented/IAugmentedAutofillService;IILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionsResponseCallback;Landroid/view/autofill/IAutoFillManagerClient;Lcom/android/server/autofill/Session$AugmentedAutofillErrorCallback;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;ILandroid/os/IBinder;Lcom/android/internal/infra/AndroidFuture;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 83
    .line 84
    .line 85
    move-object/from16 v1, v23

    .line 86
    .line 87
    move-object/from16 v0, v24

    .line 88
    .line 89
    invoke-interface {v0, v1}, Landroid/view/autofill/IAutoFillManagerClient;->getAugmentedAutofillClient(Lcom/android/internal/os/IResultReceiver;)V

    .line 90
    .line 91
    .line 92
    return-object v19
.end method
